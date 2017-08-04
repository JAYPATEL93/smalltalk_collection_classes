<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.2 of July 15, 2016 on February 13, 2017 at 8:50:06 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-property>
<name>CS474</name> <type>package</type>
<property>packageName</property> <value>'CS474'</value>
</component-property>

<class>
<name>DoubleSet</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>BSTY ArrayY ArrayX BSTX input </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>ArrayedSet</name>
<environment>Smalltalk</environment>
<super>DoubleSet</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>BranchingSet</name>
<environment>Smalltalk</environment>
<super>DoubleSet</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<shared-variable>
<name>AArray</name>
<environment>DoubleSet</environment>
<private>false</private>
<constant>false</constant>
<category>New Share</category>
<initializer>nil</initializer>
<attributes>
<package>CS474</package>
</attributes>
</shared-variable>


<shared-variable>
<name>BArray</name>
<environment>DoubleSet</environment>
<private>false</private>
<constant>false</constant>
<category>New Share</category>
<initializer>nil</initializer>
<attributes>
<package>CS474</package>
</attributes>
</shared-variable>



<methods>
<class-id>DoubleSet class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>DoubleSet</class-id> <category>actions</category>

<body package="CS474" selector="switchS">switchS

<body package="CS474" selector="elemS">elemS

<body package="CS474" selector="ArrayedSet">ArrayedSet

<body package="CS474" selector="ArrayedSet:">ArrayedSet: x

<body package="CS474" selector="copyS">copyS

<body package="CS474" selector="BranchingSet">BranchingSet

<body package="CS474" selector="unionS">unionS

<body package="CS474" selector="interS">interS
</methods>

<methods>
<class-id>DoubleSet</class-id> <category>aspects</category>

<body package="CS474" selector="ArrayX">ArrayX

<body package="CS474" selector="input">input

<body package="CS474" selector="ArrayY">ArrayY
</methods>



<initialize>
<variable-id>DoubleSet.AArray</variable-id>
</initialize>

<initialize>
<variable-id>DoubleSet.BArray</variable-id>
</initialize>

</st-source>