import xml.etree.ElementTree as ET
tree = ET.parse('hrp4.urdf')
root = tree.getroot()
print ET.VERSION

print root
print root.tag
#print root.text

#for child in root:
#    print child.tag, child.attrieb

for link in root.findall('link'):
    name = link.get('name')
    iner = link.find('inertial') # xpath
    if iner is not None:
        mass = link.find('inertial/mass')
        origin = link.find('inertial/origin')
        inertia = link.find('inertial/inertia')
	#print mass
        #print name, mass.attrib['value'], origin.attrib['rpy'], origin.attrib['xyz'] 

        dmstr = """
RevoluteLink {
    Name    "%s"
    Graphics_Model    ""
    Mass    %s
    Inertia %s %s %s
            %s %s %s
            %s %s %s
    Center_of_Gravity
    Number_of_Contact_Points	0
    MDH_Parameters	
    Initial_Joint_Velocity	0
    Joint_Limits	0	0
    Joint_Limit_Spring_Constant	0
    Joint_Limit_Damper_Constant	0
    Actuator_Type	0
    Joint_Friction	0
}
""" % (name, mass.attrib['value'], '0', '0', '0', '0', '0', '0', '0', '0', '0')

        print dmstr
        
        x, y, z = origin.attrib['xyz'].split()
        Ixx = inertia.attrib['ixx']
        Ixy = inertia.attrib['ixy']
        Ixz = inertia.attrib['ixz']
        Iyy = inertia.attrib['iyy']
        Iyz = inertia.attrib['iyz']
        Izz = inertia.attrib['izz']
        #print x,y,z
        matlabstr = """%s %s %s %s %s %s %s %s %s %s %s %s %s %s""" % (name, x, y, z, Ixx, Ixy, Ixz, Ixy, Iyy, Iyz, Ixz, Iyz, Izz, mass.attrib['value'])
        #print matlabstr

    else:
        #print name, 'NO INERTIAL INFO'
        pass


#import lxml.etree as le
#doc = le.parse('hrp4.urdf')
#print [ ln.get('name') for ln in doc.xpath('.//link')]
#print [ origin.attrib for origin in doc.xpath('.//link/inertial/origin')]
