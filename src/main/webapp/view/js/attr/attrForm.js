Ext.ns('AttrForm');
/**
 * @author
 * @createtime
 * @class StudentForm
 * @extends Ext.Window
 * @description StudentForm表单
 */
AttrForm = Ext.extend(Ext.Window, {
    formPanel: null,
    // 构造函数
    constructor: function (_cfg) {
        // 必须先初始化组件
        this.initUIComponents(_cfg);
        AttrForm.superclass.constructor.call(
            this,
            {
                id: 'AttrFormWin',
                width: 300,
                height: 150,
                layout: 'fit',
                autoScroll: true,
                resizable: false,
                draggable: true,
                closable: true,
                closeAction: 'close',
                modal: true,
                title: '<span class="commoncss">' + _cfg.title + '</span>',
                iconCls: 'page_addIcon',
                collapsible: false,
                titleCollapse: true,
                maximizable: false,
                buttonAlign: 'right',
                border: false,
                animateTarget: Ext.getBody(),
                constrain: true,
                items: formPanel,
                listeners: {
                    'beforeshow': function (comp) {
                        if (_cfg.id != null && _cfg.id != '' && _cfg.id != 'undefined') {
                            formPanel.load({
                                url: _ctxpath + '/api/attr/get',
                                method: 'GET',
                                params: {
                                    attrId: _cfg.id
                                },
                                success: function (form, action) {
                                    var res = action.result;
                                    Ext.getCmp('attrName').setValue(res.data.attrName);
                                    Ext.getCmp('attrValue').setValue(res.data.attrValue);
                                },
                                failure: function (form, action) {
                                    switch (action.failureType) {
                                        case Ext.form.Action.CLIENT_INVALID:
                                            Ext.Msg.show({
                                                title: 'Failure',
                                                msg: 'Form fields may not be submitted with invalid values',
                                                icon: Ext.MessageBox.ERROR,
                                                buttons: Ext.MessageBox.OK
                                            });
                                            break;
                                        case Ext.form.Action.CONNECT_FAILURE:
                                            Ext.Msg.show({
                                                title: 'Failure',
                                                msg: 'Ajax communication failed',
                                                icon: Ext.MessageBox.ERROR,
                                                buttons: Ext.MessageBox.OK
                                            });
                                            break;
                                        case Ext.form.Action.SERVER_INVALID:
                                            Ext.Msg.show({
                                                title: 'Failure',
                                                msg: action.result.msg,
                                                icon: Ext.MessageBox.ERROR,
                                                buttons: Ext.MessageBox.OK
                                            });
                                    }
                                }
                            });
                        }
                    }
                },
                buttons: [
                    {
                        text: '保存',
                        iconCls: 'acceptIcon',
                        handler: function () {
                            var form = formPanel.getForm();
                            if (form.isValid()) {
                                form.submit({
                                    url: _ctxpath + '/attr/save.do',
                                    success: function (form, action) {
                                        var result = action.result;
                                        Ext.Msg.show({
                                            title: '提示信息',
                                            msg: result.msg,
                                            icon: Ext.MessageBox.INFO,
                                            buttons: Ext.MessageBox.OK
                                        });
                                        if (result.success) {
                                            Ext.getCmp('AttrFormWin').close();
                                            if (_cfg.callback != null) {
                                                _cfg.callback.call(this);
                                            }
                                        }
                                    },
                                    failure: function (form, action) {
                                        switch (action.failureType) {
                                            case Ext.form.Action.CLIENT_INVALID:
                                                Ext.Msg.show({
                                                    title: 'Failure',
                                                    msg: 'Form fields may not be submitted with invalid values',
                                                    icon: Ext.MessageBox.ERROR,
                                                    buttons: Ext.MessageBox.OK
                                                });
                                                break;
                                            case Ext.form.Action.CONNECT_FAILURE:
                                                Ext.Msg.show({
                                                    title: 'Failure',
                                                    msg: 'Ajax communication failed',
                                                    icon: Ext.MessageBox.ERROR,
                                                    buttons: Ext.MessageBox.OK
                                                });
                                                break;
                                            case Ext.form.Action.SERVER_INVALID:
                                                Ext.Msg.show({
                                                    title: 'Failure',
                                                    msg: action.result.msg,
                                                    icon: Ext.MessageBox.ERROR,
                                                    buttons: Ext.MessageBox.OK
                                                });
                                        }
                                    }
                                });
                            }
                        }
                    },
                    {
                        text: '重置',
                        id: 'btnReset',
                        iconCls: 'tbar_synchronizeIcon',
                        handler: function () {
                            formPanel.getForm().reset();
                        }
                    },
                    {
                        text: '关闭',
                        iconCls: 'deleteIcon',
                        handler: function () {
                            Ext.getCmp('AttrFormWin').close();
                        }
                    }]
            });
    },
    // end of the constructor
    // 初始化组件
    initUIComponents: function (obj) {

        formPanel = new Ext.form.FormPanel({
            id: 'AttrFormPanel',
            width: 450,
            layout: "form",
            labelAlign: 'right',
            padding: '3 0 0 0',
            border: false,
            labelWidth: 80,
            items: [{
                xtype: 'hidden',
                id: 'attrId',
                name: 'attrId',
                value: obj.id
            },{
                xtype: 'textfield',
                id: 'attrName',
                name: 'attrName',
                fieldLabel: '属性名称',
                allowBlank: false
            },{
                xtype: 'textfield',
                id: 'attrValue',
                name: 'attrValue',
                fieldLabel: '属性值',
                allowBlank: false
            }]
        });
    }

// end of the initUIComponents
});