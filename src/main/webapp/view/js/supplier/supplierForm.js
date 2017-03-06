Ext.ns('QuestionForm');
/**
 * @author
 * @createtime
 * @class StudentForm
 * @extends Ext.Window
 * @description StudentForm表单
 */
SupplierForm = Ext.extend(Ext.Window, {
	formPanel : null,
	// 构造函数
	constructor : function(_cfg) {
		// 必须先初始化组件
		this.initUIComponents(_cfg);
		SupplierForm.superclass.constructor.call(
			this,
			{
				id : 'SupplierFormWin',
				width : 400,
				height : 400,
				layout : 'fit',
				autoScroll : true,
				resizable : false,
				draggable : true,
				closable : true,
				closeAction : 'close',
				modal : true,
				title : '<span class="commoncss">' + _cfg.title + '</span>',
				iconCls : 'page_addIcon',
				collapsible : false,
				titleCollapse : true,
				maximizable : false,
				buttonAlign : 'right',
				border : false,
				animateTarget : Ext.getBody(),
				constrain : true,
				items : formPanel,
				listeners : {
					'beforeshow' : function(comp) {
						if (_cfg.id != null && _cfg.id != '' && _cfg.id != 'undefined') {
							formPanel.load({
								url : _ctxpath + '/question/get.do',
								method : 'GET',
								params : {
									id : _cfg.id
								},
								success : function(form, action) {
									
									var result = action.result;
									var question_type = "";
									
									/*if(result.data.question_type == '1'){
										question_type = "判断题";
									} else if(result.data.question_type == '2') {
										question_type = "单选题" ;
//										Ext.getCmp('btn_answer').enable();
									} else if(result.data.question_type == '3') {
										question_type = "多选题";
									}*/
									if(result.data.question_type == '2'){
										question_type = "单选题";
									} else {
										question_type = "多选题";
									}
									//清空item
									Ext.getCmp('answer_form').removeAll();
									var answers = result.data.answers ;
									for(var i = 0 ; i < answers.length ; i++){
										var fieldLabel = "";
										fieldLabel = '<input id="cbx_answer_' + answers[i].answer_index + '" name="anwers" type="checkbox" value="' + answers[i].answer_index + '" style="margin-top:2px;" onclick="setCorrect(this,\'' + answers[i].answer_index + '\');"/><label for="cbx_answer_' + answers[i].answer_index + '" style="margin-left:3px;">' + answers[i].answer_index + '</label>'
										if(answers[i].iscorrect == 'Y'){
											fieldLabel = '<input checked="checked" id="cbx_answer_' + answers[i].answer_index + '" name="anwers" type="checkbox" value="' + answers[i].answer_index + '" style="margin-top:2px;" onclick="setCorrect(this,\'' + answers[i].answer_index + '\');"/><label for="cbx_answer_' + answers[i].answer_index + '" style="margin-left:3px;">' + answers[i].answer_index + '</label>'
										}
										/*if(result.data.question_type == '1'){
											fieldLabel = '<input id="cbx_answer_' + answers[i].answer_index + '" name="anwers" type="radio" value="' + answers[i].answer_index + '" style="margin-top:2px;" onclick="setRadioCorrect(this,\'' + answers[i].answer_index + '\');"/>'
											if(answers[i].iscorrect == 'Y'){
												fieldLabel = '<input checked="checked" id="cbx_answer_' + answers[i].answer_index + '" name="anwers" type="radio" value="' + answers[i].answer_index + '" style="margin-top:2px;" onclick="setRadioCorrect(this,\'' + answers[i].answer_index + '\');"/>'
											}
										} else {
											fieldLabel = '<input id="cbx_answer_' + answers[i].answer_index + '" name="anwers" type="checkbox" value="' + answers[i].answer_index + '" style="margin-top:2px;" onclick="setCorrect(this,\'' + answers[i].answer_index + '\');"/><label for="cbx_answer_' + answers[i].answer_index + '" style="margin-left:3px;">' + answers[i].answer_index + '</label>'
											if(answers[i].iscorrect == 'Y'){
												fieldLabel = '<input checked="checked" id="cbx_answer_' + answers[i].answer_index + '" name="anwers" type="checkbox" value="' + answers[i].answer_index + '" style="margin-top:2px;" onclick="setCorrect(this,\'' + answers[i].answer_index + '\');"/><label for="cbx_answer_' + answers[i].answer_index + '" style="margin-left:3px;">' + answers[i].answer_index + '</label>'
											}
										}*/
										
										var item =  {
						        			 id : answers[i].answer_index,
						        			 name : '',
						     				 xtype : 'textfield',
						     				 width : 200,
						     				 isCorrect : answers[i].iscorrect == 'Y' ? true : false,
						     				 allowBlank : false,
						     				 value : answers[i].answer_content,
						     				 fieldLabel : fieldLabel
										};
										
										Ext.getCmp('answer_form').add(item);
									}
									
									Ext.getCmp('answer_form').doLayout();
									
									Ext.getCmp('cbx_question_type').setValue(question_type);
									Ext.getCmp('question').setValue(result.data.question);
									Ext.getCmp('order_by').setValue(result.data.order_by);
									
									Ext.getCmp('default_article').setValue(result.data.article_id);
									Ext.getCmp('default_article').setRawValue(result.data.article);
								},
								failure : function(form, action) {
									switch (action.failureType) {
									case Ext.form.Action.CLIENT_INVALID:
										Ext.Msg.show({
											title : 'Failure',
											msg : 'Form fields may not be submitted with invalid values',
											icon : Ext.MessageBox.ERROR,
											buttons : Ext.MessageBox.OK
										});
										break;
									case Ext.form.Action.CONNECT_FAILURE:
										Ext.Msg.show({
											title : 'Failure',
											msg : 'Ajax communication failed',
											icon : Ext.MessageBox.ERROR,
											buttons : Ext.MessageBox.OK
										});
										break;
									case Ext.form.Action.SERVER_INVALID:
										Ext.Msg.show({
											title : 'Failure',
											msg : action.result.msg,
											icon : Ext.MessageBox.ERROR,
											buttons : Ext.MessageBox.OK
										});
									}
								}
							});
						}
					}
				},
				buttons : [
						{
							text : '保存',
							iconCls : 'acceptIcon',
							handler : function() {
								var answers = new Array();
								
								//TODO 单选题判断
								Ext.getCmp('answer_form').items.each(function(item,idx,length){
									var obj = new Object();
									obj.answer_index = item.getId();
									obj.iscorrect = item.isCorrect;
									obj.answer_content = item.getValue();
									answers.push(obj);
								});
								
								var form = formPanel.getForm();
								if (form.isValid()) {
									form.submit({
										url : _ctxpath+ '/question/save.do',
										params : {
											answers : Ext.encode(answers)
										},
										success : function(form, action) {
											var result = action.result;
											Ext.Msg.show({
												title : '提示信息',
												msg : result.msg,
												icon : Ext.MessageBox.INFO,
												buttons : Ext.MessageBox.OK
											});
											if (result.success) {
												Ext.getCmp('SupplierFormWin').close();
												if (_cfg.callback != null) {
													_cfg.callback.call(this);
												}
											}
										},
										failure : function(form, action) {
											switch (action.failureType) {
											case Ext.form.Action.CLIENT_INVALID:
												Ext.Msg.show({
													title : 'Failure',
													msg : 'Form fields may not be submitted with invalid values',
													icon : Ext.MessageBox.ERROR,
													buttons : Ext.MessageBox.OK
												});
												break;
											case Ext.form.Action.CONNECT_FAILURE:
												Ext.Msg.show({
													title : 'Failure',
													msg : 'Ajax communication failed',
													icon : Ext.MessageBox.ERROR,
													buttons : Ext.MessageBox.OK
												});
												break;
											case Ext.form.Action.SERVER_INVALID:
												Ext.Msg.show({
													title : 'Failure',
													msg : action.result.msg,
													icon : Ext.MessageBox.ERROR,
													buttons : Ext.MessageBox.OK
												});
											}
										}
									});
								}
							}
						},
						{
							text : '重置',
							id : 'btnReset',
							iconCls : 'tbar_synchronizeIcon',
							handler : function() {
								formPanel.getForm().reset();
							}
						},
						{
							text : '关闭',
							iconCls : 'deleteIcon',
							handler : function() {
								Ext.getCmp('SupplierFormWin').close();
							}
						} ]
			});
	},
	// end of the constructor
	// 初始化组件
	initUIComponents : function(obj) {
		var default_article = new Ext.form.ComboBox({
			anchor : '70%',
			id : 'default_article',
			hiddenName : 'article_id',
			fieldLabel : '选择试卷',
			triggerAction : 'all',
			mode : 'remote',
			store : new Ext.data.ArrayStore({
				url : _ctxpath + '/article/getArticleList.do',
				fields : [ 'value', 'text' ]
			}),
			valueField : 'value',
			displayField : 'text',
			editable : false
		});
		
		var question_type = {
			xtype : 'combo',
			anchor : '70%',
			id : 'cbx_question_type',
			hiddenName : 'question_type',
			fieldLabel : '题目类型',
			triggerAction : 'all',
			mode : 'local',
			store : new Ext.data.ArrayStore({
				fields : [ 'value', 'text' ],
				data : [ /*[ '1', '判断题' ], */[ '2', '单选题' ],[ '3', '多选题' ]]
			}),
			valueField : 'value',
			displayField : 'text',
			editable : false,
			listeners : {
				'beforeselect' : function(combo, rec, index){
					//清空答案选项
					Ext.getCmp('answer_form').removeAll();
					Ext.getCmp('answer_form').doLayout();
//					Ext.getCmp('btn_answer').enable();
					//判断题
					/*if(index == '0'){
						//添加判断题答案
						var item_right =  {
							 id : 'A',
							 name : '',
							 xtype : 'textfield',
							 width : 200,
							 isCorrect : true,
							 allowBlank : false,
							 value : '对',
							 fieldLabel : '<input checked="checked" id="cbx_answer_A" name="anwers" type="radio" value="A" style="margin-top:2px;" onclick="setRadioCorrect(this,\'A\');"/>'
							 
						};
						
						var item_wrong =  {
							 id : 'B',
							 name : '',
							 xtype : 'textfield',
							 width : 200,
							 isCorrect : false,
							 allowBlank : false,
							 value : '错',
							 fieldLabel : '<input id="cbx_answer_B" name="anwers" type="radio" value="B" style="margin-top:2px;" onclick="setRadioCorrect(this,\'B\');"/>'
							 
						};
						
						Ext.getCmp('answer_form').add(item_right);
						Ext.getCmp('answer_form').add(item_wrong);
						Ext.getCmp('btn_answer').disable();
						Ext.getCmp('answer_form').doLayout();
					} else {//单选或者多选
						Ext.getCmp('answer_form').removeAll();
						Ext.getCmp('answer_form').doLayout();
						Ext.getCmp('btn_answer').enable();
					}*/
				}
			}
		};
		
		if(obj.id != null){
			question_type = {
				xtype : 'textfield',
				id : 'cbx_question_type',
				name : 'question_type',
				fieldLabel : '题目类型',
				readOnly : true
			};
		}
		

		formPanel = new Ext.form.FormPanel({
			id : 'SupplierFormPanel',
			width : 450,
			layout : "form",
			labelAlign : 'right',
			padding : '3 0 0 0',
			border : false,
			labelWidth : 80,
			items : [ {
				xtype : 'hidden',
				id : 'id',
				name : 'id',
				value : obj.id
			}, 
			default_article,
			question_type,
			{
	        	 xtype : 'numberfield',
	        	 id : 'order_by',
	        	 name : 'order_by',
	        	 fieldLabel : '题号',
	        	 decimalPrecision : 0,
	        	 allowBlank : false
	        },
			{
				xtype : 'panel',
				layout : 'hbox',
				border : false,
				anchor : '100%',
				items : [
				         {
				        	 xtype : 'panel',
				        	 layout : 'form',
				        	 border : false,
				        	 width : 300,
				        	 items : [{
				 				fieldLabel : '题目',
				 				border : false,
								xtype : 'textarea',
								name : 'question',
								id : 'question',
								readOnly : false,
								allowBlank : false,
								width : 200,
							}]
				         },{
				        	 xtype : 'button',
				        	 id : 'btn_answer',
				        	 margins : '0 0 0 3',
				        	 disabled : false,
				        	 iconCls : 'addIcon',
				        	 text : '答案',
				        	 handler : function(){
				        		 var count = Ext.getCmp('answer_form').items.getCount();
				        		 var cbx_char = String.fromCharCode(65 + count);
				        		 var item =  {
			        				 id : cbx_char,
			        				 name : '',
			        				 xtype : 'textfield',
			        				 width : 200,
			        				 isCorrect : false,
			        				 allowBlank : false,
			        				 fieldLabel : '<input id="cbx_answer_' + cbx_char + '" name="anwers" type="checkbox" value="' + cbx_char + '" style="margin-top:2px;" onclick="setCorrect(this,\'' + cbx_char + '\');"/><label for="cbx_answer_' + cbx_char + '" style="margin-left:3px;">' + cbx_char + '</label>'
			        			 };
				        		 Ext.getCmp('answer_form').add(item);
				        		 Ext.getCmp('answer_form').doLayout();
				        	 }
				         }
				]
			},{
				xtype : 'container',
				layout : 'form',
				id : 'answer_form',
				border : true,
				width : 450,
				items : [/*{
					 id : 'A',
					 name : '',
					 xtype : 'textfield',
					 width : 200,
					 isCorrect : true,
					 allowBlank : false,
					 value : '对',
					 fieldLabel : '<input checked="checked" id="cbx_answer_A" name="anwers" type="radio" value="A" style="margin-top:2px;" onclick="setRadioCorrect(this,\'A\');"/>'
					 
				},{
					 id : 'B',
					 name : '',
					 xtype : 'textfield',
					 width : 200,
					 isCorrect : false,
					 allowBlank : false,
					 value : '错',
					 fieldLabel : '<input id="cbx_answer_B" name="anwers" type="radio" value="B" style="margin-top:2px;" onclick="setRadioCorrect(this,\'B\');"/>'
				}*/]
			}]
		});
	}
	
// end of the initUIComponents
});

function setCorrect(cbx,key){
	var answer = Ext.getCmp(key);
	if(cbx.checked){
		answer.isCorrect = true;
	}else{
		answer.isCorrect = false;
	}
}

function setRadioCorrect(cbx,key){
	Ext.getCmp(key).isCorrect = true;
	if(key == 'A'){
		 Ext.getCmp('B').isCorrect = false;
	}else {
		Ext.getCmp('A').isCorrect = false;
	}
}
/**
 * 判断题
 * @param key
 * @param 当前key 指定的内容是否是正确答案
 */
/*function getJudgeAnswer(isCorrect){
	var array = new Array();
	
	return array
}*/
/*function getChooseAnswer(cbx_char){
	var item =  {
			 id : cbx_char,
			 name : '',
			 xtype : 'textfield',
			 width : 200,
			 isCorrect : false,
			 allowBlank : false,
			 fieldLabel : '<input id="cbx_answer_' + cbx_char + '" name="" type="checkbox" value="' + cbx_char + '" style="margin-top:2px;" onclick="setCorrect(this,\'' + cbx_char + '\');"/><label for="cbx_answer_' + cbx_char + '" style="margin-left:3px;">' + cbx_char + '</label>'
		 };
}*/