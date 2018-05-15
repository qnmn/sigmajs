HTMLWidgets.widget({

  name: 'sigmajs',

  type: 'output',

	factory: function (el, width, height) {

		var s;

    return {

      renderValue: function(x) {

        s = new sigma({
          graph: x.data,
          container: el.id,
          settings: x.settings
        });
        
        if(x.hasOwnProperty('force')){
          s.startForceAtlas2(x.force);
          s.refresh();
        }

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

			},

			getChart: function () {
				return s;
			}

    };
  }
});

// get chart
function get_sigma_graph(id) {

	var htmlWidgetsObj = HTMLWidgets.find("#" + id); // find object

	var s; // define

	if (typeof htmlWidgetsObj != 'undefined') { // get chart if defined
		s = htmlWidgetsObj.getChart();
	}

	return (s);
}

// add node
Shiny.addCustomMessageHandler('sg_add_node_p',
	function (message) {
		var s = get_sigma_graph(message.id);
		if (typeof s != 'undefined') {
			s.graph.addNode(
				message.data[0]
			);
			s.refresh();
		}
	}
);

// add edge
Shiny.addCustomMessageHandler('sg_add_edge_p',
	function (message) {
		var s = get_sigma_graph(message.id);
		if (typeof s != 'undefined') {
			s.graph.addEdge(
				message.data[0]
			);
			s.refresh();
		}
	}
);

// restart forceAtlas2
Shiny.addCustomMessageHandler('sg_force_p',
	function (message) {
		var s = get_sigma_graph(message.id);
		if (typeof s != 'undefined') {
			s.stopForceAtlas2();
			s.startForceAtlas2(message.data);
			s.refresh();
		}
	}
);

// refresh
Shiny.addCustomMessageHandler('sg_refresh_p',
	function (message) {
		var s = get_sigma_graph(message.id);
		if (typeof s != 'undefined') {
			s.refresh();
		}
	}
);