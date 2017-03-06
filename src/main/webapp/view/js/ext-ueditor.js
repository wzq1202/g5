Ext.UEPanel = Ext.extend(Ext.Panel,{
	divStr : null,
	ueditorId : 'editor',
	/**初始化组件
	 * 
	 * 
	 */
	constructor : function(_cfg) {
		
		if((_cfg.ueditorId != null && _cfg.ueditorId != '') && _cfg.ueditorId != 'undefinded'){
			this.ueditorId = _cfg.ueditorId;
		}
		
		var initParam = new Object();
		Ext.apply(initParam,_cfg);
		initParam.html = '<div id="' + this.ueditorId + '" style="width:' + _cfg.ueWidth + ';height:' + _cfg.ueHeight + ';"></div>';
		initParam.listeners = {'afterrender' : function(){
			var editor = new baidu.editor.ui.Editor();
			editor.render(this.ueditorId);
			this.ueObj = editor;
		}};
		Ext.UEPanel.superclass.constructor.call(this,initParam);
	},
	/**获取UE对象
	 * 
	 * @returns
	 */
	getUE : function(){
		return this.ueObj;
	}
});

Ext.reg('uepanel', Ext.UEPanel);