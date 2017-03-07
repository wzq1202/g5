Ext.ns('ArticleForm');
/**
 * @author
 * @createtime
 * @class ArticleForm
 * @extends Ext.Window
 * @description ArticleForm表单
 */
ArticleForm = Ext.extend(Ext.Window, {
	formPanel : null,
	// 构造函数
	constructor : function(_cfg) {
		// 必须先初始化组件
		this.initUIComponents(_cfg);
		ArticleForm.superclass.constructor.call(
			this,
			{
				id : 'ArticleFormWin',
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
								url : _ctxpath + '/article/get.do',
								method : 'GET',
								params : {
									id : _cfg.id
								},
								success : function(form, action) {
									var result = action.result;
									Ext.getCmp('name').setValue(result.data.name);
									Ext.getCmp('ch_date').setValue(result.data.ch_date);
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
										url : _ctxpath+ '/article/save.do',
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
												Ext.getCmp('ArticleFormWin').close();
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
								Ext.getCmp('ArticleFormWin').close();
							}
						} ]
			});
	},
	// end of the constructor
	// 初始化组件
	initUIComponents : function(obj) {

		formPanel = new Ext.form.FormPanel({
			id : 'ArticleFormPanel',
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
			{
	        	 xtype : 'textfield',
	        	 id : 'name',
	        	 name : 'name',
	        	 fieldLabel : '名称',
	        	 decimalPrecision : 0,
	        	 allowBlank : false
	        }, 
			{
	        	 xtype : 'datefield',
	        	 id : 'ch_date',
	        	 format : 'Y-m-d',
	        	 name : 'ch_date',
	        	 fieldLabel : '日期',
	        	 editable : false
	        }]
		});
	}
	
// end of the initUIComponents
});
