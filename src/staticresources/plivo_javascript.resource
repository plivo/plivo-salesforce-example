$j = jQuery.noConflict();

function setupSMSTemplates() {
  var wrapper = $j('.sms_templates_table tbody');
  var template_labels = $j('[id$=sms_template_label]').prop('value').split('\n');
  var template_text = $j('[id$=sms_templates]').prop('value').split('\n');
  if (template_labels.join() !== "" && template_text.join() !== "") template_labels.forEach(function(v, i) {
    var template = '<tr><td>' + template_labels[i] + '</td><td>' + template_text[i] + '</td><td><a href="#" class="remove_button">X</a></td></tr>';
    $j(wrapper).append(template);
  });
  $j("[id$=sms_templates_add_button]").click(function(e) {
    e.preventDefault();
    var label = $j('#sms_label_input').prop('value');
    var text = $j('#sms_text_input').prop('value');
    $j('#sms_label_input').prop('value', '');
    $j('#sms_text_input').prop('value', '');
    if (label !== "" && text !== "") $j(wrapper).append('<tr><td>' + label + '</td><td>' + text + '</td><td><a href="#" class="remove_button">X</a></td></tr>');
    else alert("Please fill in both fields");
    reset_templates($j('.sms_templates_table tr:nth-child(n+2) td:first-child'), $j('.sms_templates_table tr:nth-child(n+2) td:nth-child(2)'), $j('[id$=sms_template_label]'), $j('[id$=sms_templates]'));
  });
  $j('.sms_templates_table').on("click", ".remove_button", function(e) {
    e.preventDefault();
    $j(this).parent().parent('tr').remove();
    reset_templates($j('.sms_templates_table tr:nth-child(n+2) td:first-child'), $j('.sms_templates_table tr:nth-child(n+2) td:nth-child(2)'), $j('[id$=sms_template_label]'), $j('[id$=sms_templates]'));
  });
}

function setupCallActions() {
  var wrapper = $j('.call_actions_table tbody');
  var call_actions_labels = $j('[id$=call_actions_labels]').prop('value').split('\n');
  var call_actions_text = $j('[id$=call_actions_text]').prop('value').split('\n');
  if (call_actions_labels.join() !== "" && call_actions_text.join() !== "") call_actions_labels.forEach(function(v, i) {
    var template = '<tr><td>' + call_actions_labels[i] + '</td><td>' + call_actions_text[i] + '</td><td><a href="#" class="remove_button">X</a></td></tr>';
    $j(wrapper).append(template);
  });
  $j("[id$=call_actions_add_button]").click(function(e) {
    e.preventDefault();
    var label = $j('#call_action_label_input').prop('value');
    var text = $j('#call_action_text_input').prop('value');
    $j('#call_action_label_input').prop('value', '');
    $j('#call_action_text_input').prop('value', '');
    if (label !== "" && text !== "") $j(wrapper).append('<tr><td>' + label + '</td><td>' + text + '</td><td><a href="#" class="remove_button">X</a></td></tr>');
    else alert("Please fill in both fields");
    reset_templates($j('.call_actions_table tr:nth-child(n+2) td:first-child'), $j('.call_actions_table tr:nth-child(n+2) td:nth-child(2)'), $j('[id$=call_actions_labels]'), $j('[id$=call_actions_text]'));
  });
  $j('.call_actions_table').on("click", ".remove_button", function(e) {
    e.preventDefault();
    $j(this).parent().parent('tr').remove();
    reset_templates($j('.call_actions_table tr:nth-child(n+2) td:first-child'), $j('.call_actions_table tr:nth-child(n+2) td:nth-child(2)'), $j('[id$=call_actions_labels]'), $j('[id$=call_actions_text]'));
  });
}

function reset_templates(label_els, text_els, label_field, text_field) {
  var template_text = "", labels = "";
  var len = label_els.length;
  label_els.each(function(i, el) {
    labels += $j(el).text();
    if (i !== len - 1) labels += '\n';
  });
  label_field.text(labels);
  text_els.each(function(i, el) {
    template_text += $j(el).text();
    if (i !== len - 1) template_text += '\n';
  });
  text_field.text(template_text);
}

function settings_init() {
  $j("[id$=tabs] li").click(function(e) {
    if (!$j(this).hasClass("active")) {
      var tabNum = $j(this).index();
      var nthChild = tabNum + 1;
      $j("[id$=tabs] li.active").removeClass("active");
      $j(this).addClass("active");
      $j("[id$=tab] li.active").removeClass("active");
      $j("[id$=tab] li:nth-child(" + nthChild + ")").addClass("active");
    }
  });
  setupSMSTemplates();
  setupCallActions();
}

function enableButtons() {
  $j('[id$=bulk_sms_button]').attr('disabled', false);
  $j('[id$=bulk_call_button]').attr('disabled', false);
}

function disableButtons() {
  $j('[id$=bulk_sms_button]').attr('disabled', true);
  $j('[id$=bulk_call_button]').attr('disabled', true);
}

function fill_textmessage(value) {
  $j('[id*=textmessage]').text(value);
}

function checkAll(cb) {
  $j('.checkbox').each(function() {
    this.checked = cb.checked;
  });
}

function showOverlay() {
  var overlay = $j("#overlay");
  if (overlay.length) {
    $j(overlay).show();
  } else {
    var node = document.createElement("div");
    node.id = "overlay";
    node.style.backgroundColor = "black";
    node.style.opacity = "0.40";
    node.style.filter = "alpha(opacity = 40)";
    node.style.position = "absolute";
    node.style.width = "100%";
    node.style.height = "100%";
    node.style.top = "0";
    node.style.left = "0";
    node.style.zIndex = "9998";
    document.body.appendChild(node);
  }
}

function hideOverlay() {
  $j(".customPopup").hide();
  $j("#overlay").hide();
  var inputElem = $j("input:checkbox");
  for (var i = 0; i < inputElem.length; i++) {
    inputElem[i].checked = false;
  }
}

