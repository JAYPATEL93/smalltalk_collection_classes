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

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Unlabeled Canvas' 			#bounds: #(#{Graphics.Rectangle} 623 213 1235 581 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 42 0 28 0 238 0 52 0 ) 					#name: #InputField1 					#model: #input ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 30 0 79 0 133 0 100 0 ) 					#name: #ActionButton1 					#model: #ArrayedSet 					#label: 'Arrayed Set' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 148 0 79 0 256 0 100 0 ) 					#name: #ActionButton2 					#model: #BranchingSet 					#label: 'Branching Set' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 447 0 109 0 551 0 130 0 ) 					#name: #ActionButton3 					#model: #switchS 					#label: 'Switch Sets' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 89 0 122 0 201 0 143 0 ) 					#name: #ActionButton4 					#model: #unionS 					#label: 'Set Union' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 89 0 159 0 202 0 181 0 ) 					#name: #ActionButton5 					#model: #interS 					#label: 'Set Intersection' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 253 0 30 0 364 0 51 0 ) 					#name: #ActionButton6 					#model: #elemS 					#label: 'Add Elements' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 328 0 109 0 434 0 130 0 ) 					#name: #ActionButton7 					#model: #copyS 					#label: 'Copy X into Y' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 327 0 82 0 561 0 103 0 ) 					#name: #InputField2 					#model: #ArrayX 					#type: #string ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 328 0 168 0 562 0 189 0 ) 					#name: #InputField3 					#model: #ArrayY ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 328 0 64 0 ) 					#name: #Label1 					#label: 'X' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 329 0 151 0 ) 					#name: #Label2 					#label: 'Y' ) ) ) )</body>
</methods>


<methods>
<class-id>DoubleSet</class-id> <category>actions</category>

<body package="CS474" selector="switchS">switchS	"This stub method was generated by UIDefiner"| xArray yArray indexX indexY index|			xArray := Array new: (AArray size).	yArray := Array new: (BArray size).		indexX:=1.	indexY:=1.	index:= 1.			[indexX &lt;= AArray size] whileTrue:[xArray at: indexX put: (AArray at:indexX). indexX:= indexX + 1.].		[indexY &lt;= BArray size] whileTrue:[yArray at: indexY put: (BArray at:indexY). indexY := indexY + 1.].				AArray := Array new: indexY - 1.	[index &lt; indexY] whileTrue:[AArray at: index put: (yArray at:index). index := index + 1.].		index:= 1.	BArray := Array new: indexX - 1.		[index &lt; indexX] whileTrue:[BArray at: index put: (xArray at:index). index := index + 1.].	ArrayX value: AArray printString.	ArrayY value: BArray printString."	Dialog warn: (AArray size) printString.		Dialog warn: (AArray size) printString.	Dialog warn: (BArray size) printString."		^self</body>

<body package="CS474" selector="elemS">elemS"This stub method was generated by UIDefiner"| stream Sindex Aindex Ssize outstream aArray sharedSize copyAA|			stream := (input value) readStream.	Ssize := (stream size).	Ssize := (Ssize // 2) + 1.		sharedSize:= AArray size + Ssize.		"Dialog warn:'size: ', sharedSize printString."		aArray := Array new: (sharedSize).			Sindex := 1.	Aindex := 1.	copyAA:= 1.		[Aindex &lt;= AArray size] whileTrue:[aArray at: Aindex put: (AArray at: Aindex). Aindex := Aindex + 1.].				[Sindex &lt;= stream size] whileTrue:[outstream := (Number readFrom:stream). aArray at: Aindex put: outstream. stream skipSeparators. Sindex := Sindex+2. Aindex := Aindex+1.].	"Dialog warn:'array: ', aArray printString."		AArray := Array new: sharedSize.	[copyAA &lt;= aArray size] whileTrue:[AArray at: copyAA put: (aArray at: copyAA). copyAA := copyAA + 1.].			ArrayX value: AArray printString.	^self</body>

<body package="CS474" selector="ArrayedSet">ArrayedSet"This stub method was generated by UIDefiner"| stream Sindex Aindex Ssize outstream|		stream := (input value) readStream.	Ssize := (stream size).	Ssize := (Ssize // 2) + 1.	"Dialog warn:'size: ', Ssize printString.	"	AArray := Array new: (Ssize).			Sindex := 1.	Aindex := 1.		[Sindex &lt;= stream size] whileTrue:[outstream := (Number readFrom:stream). AArray at: Aindex put: outstream. stream skipSeparators. Sindex := Sindex+2. Aindex := Aindex+1.].	"Dialog warn:'array: ', AArray printString."	ArrayX value: AArray printString.	^self</body>

<body package="CS474" selector="ArrayedSet:">ArrayedSet: x"This stub method was generated by UIDefiner"| stream w1 w2 w3 w4 aArray Sindex Aindex Ssize outstream|		stream := (input value) readStream.	Ssize := (stream size).	Ssize := (Ssize // 2) + 1.	Dialog warn:'size: ', Ssize printString.	aArray := Array new: (Ssize).			Sindex := 1.	Aindex := 1.		[Sindex &lt;= stream size] whileTrue:[outstream := (Number readFrom:stream). aArray at: Aindex put: outstream. stream skipSeparators. Sindex := Sindex+2. Aindex := Aindex+1.].	Dialog warn:'array: ', aArray printString.	ArrayX value: aArray printString.		^aArray.	"^self"	"		w1 := Number readFrom:stream.	stream skipSeparators.	w2 := Number readFrom:stream.	stream skipSeparators.	w3 := Number readFrom:stream.	stream skipSeparators.	w4 := Number readFrom:stream.		Dialog warn:'1', w1 printString.	Dialog warn:'2', w2 printString.	Dialog warn:'3', w3 printString.	Dialog warn:'4', w4 printString.		"</body>

<body package="CS474" selector="copyS">copyS	"This stub method was generated by UIDefiner"| index|			BArray := Array new: (AArray size).	index:= 1.	[index &lt;= (AArray size)] whileTrue:[BArray at: index put: (AArray at:index). index := index + 1.].			ArrayY value: BArray printString.	^self</body>

<body package="CS474" selector="BranchingSet">BranchingSet	"This stub method was generated by UIDefiner"	^self</body>

<body package="CS474" selector="unionS">unionS	"This stub method was generated by UIDefiner"| xsize ysize finalSize tempArray index c|	xsize := AArray size.	ysize := BArray size.	finalSize := xsize + ysize.		tempArray:= Array new: finalSize.	index := 1.	c := 1.		[index &lt;= xsize] whileTrue:[tempArray at: index put: (AArray at: index). index := index + 1.].	[c &lt;= ysize] whileTrue:[tempArray at: index put: (BArray at: c). index := index + 1. c:=c+1.].	index := 1.	AArray := Array new: finalSize.		[index &lt;= (AArray size)] whileTrue:[AArray at: index put: (tempArray at:index). index := index + 1.].		ArrayX value: AArray printString.</body>

<body package="CS474" selector="interS">interS	"This stub method was generated by UIDefiner"	^self</body>
</methods>

<methods>
<class-id>DoubleSet</class-id> <category>aspects</category>

<body package="CS474" selector="ArrayX">ArrayX	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^ArrayX isNil		ifTrue:			[ArrayX := String new asValue]		ifFalse:			[ArrayX]</body>

<body package="CS474" selector="input">input	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^input isNil		ifTrue:			[input := String new asValue]		ifFalse:			[input]</body>

<body package="CS474" selector="ArrayY">ArrayY	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^ArrayY isNil		ifTrue:			[ArrayY := String new asValue]		ifFalse:			[ArrayY]</body>
</methods>



<initialize>
<variable-id>DoubleSet.AArray</variable-id>
</initialize>

<initialize>
<variable-id>DoubleSet.BArray</variable-id>
</initialize>

</st-source>
