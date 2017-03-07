Ext.ns('UserForm');
/**
 * @author
 * @createtime
 * @class UserForm
 * @extends Ext.Window
 * @description UserForm表单
 */
UserForm = Ext.extend(Ext.Window, {
	formPanel : null,
	panel : null,
	// 构造函数
	constructor : function(_cfg) {
		// 必须先初始化组件
		this.initUIComponents(_cfg);
		UserForm.superclass.constructor.call(
			this,
			{
				id : 'UserFormWin',
				width : 500,
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
				items : panel,
				listeners : {
					'beforeshow' : function(comp) {
						if (_cfg.id != null && _cfg.id != '' && _cfg.id != 'undefined') {
							formPanel.load({
								url : _ctxpath + '/user/get.do',
								method : 'GET',
								params : {
									id : _cfg.id
								},
								success : function(form, action) {
									var result = action.result;
									Ext.getCmp('name').setValue(result.data.name);
									Ext.getCmp('tel').setValue(result.data.tel);
									Ext.getCmp('department').setValue(result.data.department);
									Ext.getCmp('position').setValue(result.data.position);
									Ext.getCmp('declaration').setValue(result.data.declaration);
									Ext.getCmp('cbo_is_score').setValue(result.data.is_score);
									if(result.data.is_score == '1'){
										Ext.getCmp('cbo_is_score').setRawValue('竞技类');
									}else{
										Ext.getCmp('cbo_is_score').setRawValue('友谊类');
									}
									
									
									if(result.data.photo_url != null && result.data.photo_url != ''){
										Ext.getCmp('photo_url').setValue(result.data.photo_url);
										Ext.getCmp('head_img').body.update('<img src="' + result.data.show_url + '" />');
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
				buttons : [
						{
							text : '保存',
							iconCls : 'acceptIcon',
							handler : function() {
								
								var form = formPanel.getForm();
								if (form.isValid()) {
									form.submit({
										url : _ctxpath+ '/user/save.do',
										params : {
											
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
												Ext.getCmp('UserFormWin').close();
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
								Ext.getCmp('UserFormWin').close();
							}
						} ]
			});
	},
	// end of the constructor
	// 初始化组件
	initUIComponents : function(obj) {
		
		formPanel = new Ext.form.FormPanel({
			id : 'UserFormPanel',
			width : 250,
			labelAlign : 'right',
			padding : '3 0 0 0',
			border : false,
			labelWidth : 80,
			items : [{
				xtype : 'hidden',
				id : 'id',
				name : 'user_id',
				value : obj.id
			},{
				xtype : 'hidden',
				id : 'photo_url',
				name : 'photo_url'
			},{
				xtype : 'combo',
				id : 'cbo_is_score',
				width : 120,
				hiddenName : 'is_score',
				fieldLabel : '类型',
				triggerAction : 'all',
				mode : 'local',
				store : new Ext.data.ArrayStore({
					fields : [ 'value', 'text' ],
					data :  [['0','友谊类'],['1','竞技类']]
				}),
				valueField : 'value',
				displayField : 'text',
				editable : false
			},{
	        	 xtype : 'textfield',
	        	 id : 'name',
	        	 name : 'name',
	        	 fieldLabel : '用户名',
	        	 decimalPrecision : 0,
	        	 allowBlank : false
	        },{
	        	 xtype : 'textfield',
	        	 id : 'tel',
	        	 name : 'tel',
	        	 fieldLabel : '手机号',
	        	 decimalPrecision : 0,
	        	 allowBlank : false
	        },{
	        	 xtype : 'textfield',
	        	 id : 'department',
	        	 name : 'department',
	        	 fieldLabel : '部门',
	        	 decimalPrecision : 0,
	        	 allowBlank : false
	        },{
	        	 xtype : 'textfield',
	        	 id : 'position',
	        	 name : 'position',
	        	 fieldLabel : '职位',
	        	 decimalPrecision : 0,
	        	 allowBlank : false
	        },{
	        	 xtype : 'textfield',
	        	 id : 'declaration',
	        	 name : 'declaration',
	        	 fieldLabel : '宣言',
	        	 decimalPrecision : 0,
	        	 allowBlank : true
	        }]
		});
		var headerPanel = new Ext.form.FormPanel({
			id : 'headerForm',
			fileUpload : true,
			border : false,
			labelAlign : 'right',
			width : 250,
			height : 300,
			items : [{
				id : 'head_img',
			    xtype: 'panel', // 或者xtype: 'component',
			    width: 100, //图片宽度
			    border : true,
			    style : 'border : 1px solid gray',
			    height: 100, //图片高度
			    html : '<img src="../pages/img/tx.png" />'
			},{
				xtype : 'textfield',
				inputType : 'file',
				allowBlank : false,
				name : 'file',
			},{
				xtype : 'button',
				width : 150,
				height : 40,
				text : '上传',
				handler : function(){
					var form = headerPanel.getForm();
					if (form.isValid()) {
						form.submit({
							url : _ctxpath+ '/upload/uploadHeader.do',
							params : {
								user_id : obj.id
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
									Ext.getCmp('photo_url').setValue(result.photo_url);
									Ext.getCmp('head_img').body.update('<img src="' + result.show_url + '" />') ;
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
			}]
		});
		
		panel = new Ext.Panel({
			xtype : 'panel',
			width : 500,
			height : 400,
			layout : 'hbox',
//			style : 'background-color:white',
			items : [formPanel,headerPanel]
		});
	}
	
// end of the initUIComponents
});
