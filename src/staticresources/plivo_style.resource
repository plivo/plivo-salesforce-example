.customPopup {
    background-color: white;
    border-width: 2px;
    border-style: solid;
    z-index: 9999;
    left: 50%;
    padding:20px;
    position: absolute;
    width: 300px;
    margin-left: -150px;
    top:15px;
}
.closeButton { float: right; }
.customPopup > p:nth-child(1) { margin-top: 0; }
#tabs {
    list-style-type: none;
    padding: 0;
    text-align: center;
    margin: 0;
}
#tabs li {
    display: inline-block;
    border: solid 2px #8AB100;
    padding: 3px;
    margin-left: 2px;
    cursor: pointer;
}
#tabs li:hover  { background-color: #8AB100; color: #fff; }
#tabs li.active { background-color: #8AB100; color: #fff; }
#tab {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
#tab li { display: none; }
#tab li.active { display: block; margin-left:0; }
.sms_templates_table, .call_actions_table {
  padding: 0;
  width: 298px;
  border: 1px solid black;
  margin: 10px 0;
}
.sms_templates_table table, .call_actions_table table {
  border-collapse: collapse;
  border-spacing: 0;
  width:100%;
  height:100%;
  margin:0;
  padding:0;
  table-layout:fixed
}
.sms_templates_table tr td:first-child, .call_actions_table tr td:first-child {
    width:48px;
    word-wrap: break-word;
}
.sms_templates_table tr td:nth-child(2), .call_actions_table tr td:nth-child(2) {
    width:209px;
    word-wrap: break-word;
}
.sms_templates_table tr td:last-child, .call_actions_table tr td:last-child {
    width:9px;
}
.sms_templates_table td, .call_actions_table td {
  vertical-align: middle;
  border: 1px solid black;
  border-width:0 1px 1px 0;
  text-align:left;
  padding:5px;
  font-size:12px;
  font-family:Arial;
  font-weight:normal;
  color:#000000;
}
.sms_templates_table tr:last-child td, .call_actions_table tr:last-child td {
  border-width: 0 1px 0 0;
}
.sms_templates_table tr td:last-child, .call_actions_table tr td:last-child {
  border-width: 0 0 1px 0;
}
.sms_templates_table tr:last-child td:last-child, .call_actions_table tr:last-child td:last-child {
  border-width: 0 0 0 0;
}
.sms_templates_table tr:first-child td, .call_actions_table tr:first-child td {
    border: 0 solid black;
    text-align:center;
    border-width:0 0 1px 1px;
    font-size:12px;
    font-family:Arial;
    font-weight:normal;
    color:#000000;
    background-color: #d7d7d7;
}
.sms_templates_table tr:first-child td:first-child, .call_actions_table tr:first-child td:first-child {
  border-width: 0 0 1px 0;
}
.sms_templates_table tr:first-child td:last-child, .call_actions_table tr:first-child td:last-child {
  border-width: 0 0 1px 1px;
}
.sms_templates_table tr:last-child td:last-child, .call_actions_table tr:last-child td:last-child {
  border-width: 0 0 0 1px;
}
.sms_templates_table tr:nth-child(n+2) tr:hover, .call_actions_table tr:nth-child(n+2) tr:hover {
    background-color: #efefef;
}
.remove_button {
    display: inline-block;
    text-align:center;
    text-decoration: none;
    color: red;
}
.remove_button:hover {
    display: inline-block;
    text-align:center;
    font-weight:bold;
    text-decoration: none;
    color: red;
}
#add_template, #add_call_action{
    margin: 20px 0;
}
#sms_label_input, #call_action_label_input{
    width: 50px;
}
#sms_text_input, #call_action_text_input{
    width: 193px;
}