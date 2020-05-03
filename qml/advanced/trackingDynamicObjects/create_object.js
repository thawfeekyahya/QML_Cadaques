var component;

var m_target;
var m_src;
var m_func;

function create(p_sourceFile,p_parent,p_func) {

    m_target = p_parent;
    m_src    = p_sourceFile;
    m_func   = p_func;

    component = Qt.createComponent(p_sourceFile);
    if(component.status == Component.Ready) {
        finishCreation();
    } else {
        component.statusChanged.connect(finishCreation)
    }
}

function finishCreation() {
    if(component.status == Component.Ready) {
        var obj = component.createObject(m_target)

        if(m_func != null || m_func != undefined) m_func(obj,m_target);
        if(obj == null) {
            console.log("Error Creating object ");
        }
    } else if(component.status == Component.Error) {
        console.log("Error loading component : ",component.errorString());
    }
}

