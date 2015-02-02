/* [ ---- Gebo Admin Panel - dashboard ---- ] */

	$(document).ready(function() {
		//* small charts
		gebo_peity.init();
		//* charts
		gebo_charts.fl_d();
		/*gebo_charts.fl_2();*/
		//* sortable/searchable list
		gebo_flist.init();
		//* calendar
		gebo_calendar.init();
		//* responsive table
		gebo_media_table.init();
		//* resize elements on window resize
		var lastWindowHeight = $(window).height();
		var lastWindowWidth = $(window).width();
		$(window).on("debouncedresize",function() {
			if($(window).height()!=lastWindowHeight || $(window).width()!=lastWindowWidth){
				lastWindowHeight = $(window).height();
				lastWindowWidth = $(window).width();
				//* rebuild calendar
				$('#calendar').fullCalendar('render');
			}
		});
		//* small gallery grid
        gebo_gal_grid.mixed();
		
	});
	
	//* small charts
	gebo_peity = {
		init: function() {
			$.fn.peity.defaults.line = {
				strokeWidth: 1,
				delimeter: ",",
				height: 32,
				max: null,
				min: 0,
				width: 50
			};
			$.fn.peity.defaults.bar = {
				delimeter: ",",
				height: 32,
				max: null,
				min: 0,
				width: 50
			};
			$(".p_bar_up").peity("bar",{
				colour: "#6cc334"
			});
			$(".p_bar_down").peity("bar",{
				colour: "#e11b28"
			});
			$(".p_line_up").peity("line",{
				colour: "#b4dbeb",
				strokeColour: "#3ca0ca"
			});
			$(".p_line_down").peity("line",{
				colour: "#f7bfc3",
				strokeColour: "#e11b28"
			});
		}
	};

	//* charts
    gebo_charts = {
       fl_d : function() {			
            // Setup the placeholder reference
            var elem = $('#fl_d');

			var d1 = [
				[new Date('05/23/2012').getTime(),350],
				[new Date('05/24/2012').getTime(),100],
				[new Date('05/25/2012').getTime(),550],
				[new Date('05/26/2012').getTime(),608],
				[new Date('05/27/2012').getTime(),681],
				[new Date('05/28/2012').getTime(),591],
				[new Date('05/29/2012').getTime(),510]
			];
			
			var d2 = [
				[new Date('05/23/2012').getTime(),350],
				[new Date('05/24/2012').getTime(),100],
				[new Date('05/25/2012').getTime(),550],
				[new Date('05/26/2012').getTime(),608],
				[new Date('05/27/2012').getTime(),681],
				[new Date('05/28/2012').getTime(),591],
				[new Date('05/29/2012').getTime(),510]
			];

			for (var i = 0; i < d1.length; ++i) {d1[i][0] += 60 * 120 * 1000};
			for (var i = 0; i < d2.length; ++i) {d2[i][0] += 60 * 120 * 1000};

			var options = {
				series: {
					curvedLines: { active: true }
				},
				yaxes: [
					{min: 0},
                    {position: "right"}
				],
				xaxis: {
					mode: "time",
					minTickSize: [1, "day"],
					autoscaleMargin: .10
					
				},
				grid: { hoverable: true },
				legend: { position: 'nw' },
				colors: [ "#324074", "#8b91a6" ]
			};

			// Setup the flot chart using our data
            fl_d_plot = $.plot(elem,
				[
					{ 	data: d1,
						label: "完成情况",
						bars: {
							show: true,
							barWidth: 60 * 360 * 1000,
							align: "center",
							fill: 1
						}
					},
					{   data: d2,
                        label: "走向曲线",
                        curvedLines: {
                            active: false,
                            show: true,
                            lineWidth: 2
                        },
						yaxis: 2,
						points: { show: true },
						stack: null
					}
				], options);
			
            // Create a tooltip on our chart
            elem.qtip({
                prerender: true,
                content: 'Loading...', // Use a loading message primarily
                position: {
                    viewport: $(window), // Keep it visible within the window if possible
                    target: 'mouse', // Position it in relation to the mouse
                    adjust: { x: 7 } // ...but adjust it a bit so it doesn't overlap it.
                },
                show: false, // We'll show it programatically, so no show event is needed
                style: {
                    classes: 'ui-tooltip-shadow ui-tooltip-tipsy',
                    tip: false // Remove the default tip.
                }
            });
         
            // Bind the plot hover
            elem.on('plothover', function(event, coords, item) {
                // Grab the API reference
                var self = $(this),
                    api = $(this).qtip(),
                    previousPoint, content,
         
                // Setup a visually pleasing rounding function
                round = function(x) { return Math.round(x * 1000) / 1000; };
         
                // If we weren't passed the item object, hide the tooltip and remove cached point data
                if(!item) {
                    api.cache.point = false;
                    return api.hide(event);
                }
				
                // Proceed only if the data point has changed
                previousPoint = api.cache.point;
                if(previousPoint !== item.seriesIndex)
                {
                    // Update the cached point data
                    api.cache.point = item.seriesIndex;
					
                    // Setup new content
                    content = item.series.label +': '+ round(item.datapoint[1]);
         
                    // Update the tooltip content
                    api.set('content.text', content);
         
                    // Make sure we don't get problems with animations
                    api.elements.tooltip.stop(1, 1);
         
                    // Show the tooltip, passing the coordinates
                    api.show(coords);
                }
            });
        }
    };
	//* filterable list
	gebo_flist = {
		init: function(){
			//*typeahead
			var list_source = [];
			$('.user_list li').each(function(){
				var search_name = $(this).find('.sl_name').text();
				//var search_email = $(this).find('.sl_email').text();
				list_source.push(search_name);
			});
			$('.user-list-search').typeahead({source: list_source, items:5});
			
			var pagingOptions = {};
			var options = {
				valueNames: [ 'sl_name', 'sl_status', 'sl_email' ],
				page: 10,
				plugins: [
					[ 'paging', {
						pagingClass	: "bottomPaging",
						innerWindow	: 1,
						left		: 1,
						right		: 1
					} ]
				]
			};
			var userList = new List('user-list', options);
			
			$('#filter-online').on('click',function() {
				$('ul.filter li').removeClass('active');
				$(this).parent('li').addClass('active');
				userList.filter(function(item) {
					if (item.values().sl_status == "online") {
						return true;
					} else {
						return false;
					}
				});
				return false;
			});
			$('#filter-offline').on('click',function() {
				$('ul.filter li').removeClass('active');
				$(this).parent('li').addClass('active');
				userList.filter(function(item) {
					if (item.values().sl_status == "offline") {
						return true;
					} else {
						return false;
					}
				});
				return false;
			});
			$('#filter-none').on('click',function() {
				$('ul.filter li').removeClass('active');
				$(this).parent('li').addClass('active');
				userList.filter();
				return false;
			});
			
			$('#user-list').on('click','.sort',function(){
					$('.sort').parent('li').removeClass('active');
					if($(this).parent('li').hasClass('active')) {
						$(this).parent('li').removeClass('active');
					} else {
						$(this).parent('li').addClass('active');
					}
				}
			);
		}
	};
	
	//* gallery grid
    gebo_gal_grid = {
         mixed: function() {
            $('#mixed_grid ul').imagesLoaded(function() {
                // Prepare layout options.
                var options = {
                  autoResize: true, // This will auto-update the layout when the browser window is resized.
                  container: $('#mixed_grid'), // Optional, used for some extra CSS styling
                  offset: 6, // Optional, the distance between grid items
                  itemWidth: 246, // Optional, the width of a grid item (li)
                  flexibleItemWidth: false
                };
                
                // Get a reference to your grid items.
                var handler = $('#mixed_grid ul li');
                
                // Call the layout function.
                handler.wookmark(options);
                
                $('#mixed_grid ul li').on('mouseenter',function(){
                    $(this).addClass('act_tools');	
                }).on('mouseleave',function(){
                    $(this).removeClass('act_tools');
                });
                
				
            });
        }
    };
	
	//* calendar
	gebo_calendar = {
		init: function() {
			var date = new Date();
			var d = date.getDate();
			var m = date.getMonth();
			var y = date.getFullYear();
			var calendar = $('#calendar').fullCalendar({
				header: {
					left: 'prev,next',
					center: 'title,today',
					right: 'month,agendaWeek,agendaDay'
				},
				buttonText: {
					prev: '<i class="icon-chevron-left cal_prev" />',
					next: '<i class="icon-chevron-right cal_next" />'
				},
				aspectRatio: 1.5,
				selectable: true,
				selectHelper: true,
				select: function(start, end, allDay) {
					var title = prompt('Event Title:');
					if (title) {
						calendar.fullCalendar('renderEvent',
							{
								title: title,
								start: start,
								end: end,
								allDay: allDay
							},
							true // make the event "stick"
						);
					}
					calendar.fullCalendar('unselect');
				},
				editable: true,
				theme: false,
				events: [
					{
						title: 'All Day Event',
						start: new Date(y, m, 1),
                        color: '#aedb97',
                        textColor: '#3d641b'
					},
					{
						title: 'Long Event',
						start: new Date(y, m, d-5),
						end: new Date(y, m, d-2)
					},
					{
						id: 999,
						title: 'Repeating Event',
						start: new Date(y, m, d+8, 16, 0),
						allDay: false
					},
					{
						id: 999,
						title: 'Repeating Event',
						start: new Date(y, m, d+15, 16, 0),
						allDay: false
					},
					{
						title: 'Meeting',
						start: new Date(y, m, d+12, 15, 0),
						allDay: false,
                        color: '#aedb97',
                        textColor: '#3d641b'
					},
					{
						title: 'Lunch',
						start: new Date(y, m, d, 12, 0),
						end: new Date(y, m, d, 14, 0),
						allDay: false
					},
					{
						title: 'Birthday Party',
						start: new Date(y, m, d+1, 19, 0),
						end: new Date(y, m, d+1, 22, 30),
						allDay: false,
                        color: '#cea97e',
                        textColor: '#5e4223'
					},
					{
						title: 'Click for Google',
						start: new Date(y, m, 28),
						end: new Date(y, m, 29),
						url: 'http://google.com/'
					}
				],
				eventColor: '#bcdeee'
			})
		}
	};
	
    //* responsive tables
    gebo_media_table = {
        init: function() {
			$('.mediaTable').mediaTable();
        }
    };
