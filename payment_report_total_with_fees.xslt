<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="final_totals_table_body">
		<xsl:variable name="isCashEnabled" select="/*/IsCashEnabled" />
		<xsl:variable name="isCheckEnabled" select="/*/IsCheckEnabled" />
		<xsl:variable name="isGuaranteedCheckEnabled" select="/*/IsGuaranteedCheckEnabled" />
		<xsl:variable name="isFinanceEnabled" select="/*/IsFinanceEnabled" />
		
		<xsl:for-each select="/*/Departments/Department">
			
			<xsl:variable name="index" select="position()" />
			
			<xsl:variable name="swiperamex">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperAMEX"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swiperamextillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperAMEX)" />
			
			<xsl:variable name="ipadswiperamex">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperAMEX"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswiperamextillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperAMEX)" />
			
			<xsl:variable name="chipamex">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipAMEX"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipamextillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipAMEX)" />
			
			<xsl:variable name="ipadchipamex">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipAMEX"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipamextillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipAMEX)" />
			
			<xsl:variable name="manualamex">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualAMEX"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualamextillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualAMEX)" />
			
			<xsl:variable name="ipadmanualamex">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualAMEX"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualamextillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualAMEX)" />
			
			<xsl:variable name="onlineamex">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineAMEX"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlineamextillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineAMEX)" />
			
			<xsl:variable name="swiperamexsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperAMEXSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swiperamexsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperAMEXSurcharges)" />
			
			<xsl:variable name="ipadswiperamexsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperAMEXSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswiperamexsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperAMEXSurcharges)" />
			
			<xsl:variable name="chipamexsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipAMEXSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipamexsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipAMEXSurcharges)" />
			
			<xsl:variable name="ipadchipamexsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipAMEXSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipamexsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipAMEXSurcharges)" />
			
			<xsl:variable name="manualamexsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualAMEXSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualamexsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualAMEXSurcharges)" />
			
			<xsl:variable name="ipadmanualamexsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualAMEXSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualamexsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualAMEXSurcharges)" />
			
			<xsl:variable name="onlineamexsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineAMEXSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlineamexsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineAMEXSurcharges)" />
			
			<xsl:variable name="swiperamexroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperAMEXRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swiperamexroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperAMEXRoAmount)" />
			
			<xsl:variable name="ipadswiperamexroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperAMEXRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswiperamexroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperAMEXRoAmount)" />
			
			<xsl:variable name="chipamexroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipAMEXRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipamexroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipAMEXRoAmount)" />
			
			<xsl:variable name="ipadchipamexroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipAMEXRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipamexroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipAMEXRoAmount)" />
			
			<xsl:variable name="manualamexroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualAMEXRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualamexroamountstillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualAMEXRoAmount)" />
			
			<xsl:variable name="ipadmanualamexroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualAMEXRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualamexroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualAMEXRoAmount)" />
			
			<xsl:variable name="onlineamexroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineAMEXRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlineamexroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineAMEXRoAmount)" />

			<xsl:variable name="swipervisa">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperVISA"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swipervisatillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperVISA)" />
			
			<xsl:variable name="ipadswipervisa">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperVISA"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswipervisatillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperVISA)" />
			
			<xsl:variable name="chipvisa">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipVISA"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipvisatillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipVISA)" />
			
			<xsl:variable name="ipadchipvisa">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipVISA"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipvisatillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipVISA)" />
			
			<xsl:variable name="manualvisa">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualVISA"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualvisatillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualVISA)" />
			
			<xsl:variable name="ipadmanualvisa">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualVISA"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualvisatillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualVISA)" />
			
			<xsl:variable name="onlinevisa">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineVISA"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinevisatillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineVISA)" />
			
			<xsl:variable name="swipervisasurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperVISASurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swipervisasurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperVISASurcharges)" />
			
			<xsl:variable name="ipadswipervisasurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperVISASurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswipervisasurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperVISASurcharges)" />
			
			<xsl:variable name="chipvisasurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipVISASurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipvisasurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipVISASurcharges)" />
			
			<xsl:variable name="ipadchipvisasurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipVISASurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipvisasurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipVISASurcharges)" />
			
			<xsl:variable name="manualvisasurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualVISASurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualvisasurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualVISASurcharges)" />
			
			<xsl:variable name="ipadmanualvisasurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualVISASurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualvisasurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualVISASurcharges)" />
			
			<xsl:variable name="onlinevisasurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineVISASurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinevisasurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineVISASurcharges)" />
			
			<xsl:variable name="swipervisaroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperVISARoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swipervisaroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperVISARoAmount)" />
			
			<xsl:variable name="ipadswipervisaroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperVISARoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswipervisaroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperVISARoAmount)" />
			
			<xsl:variable name="chipvisaroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipVISARoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipvisaroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipVISARoAmount)" />
			
			<xsl:variable name="ipadchipvisaroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipVISARoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipvisaroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipVISARoAmount)" />
			
			<xsl:variable name="manualvisaroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualVISARoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualvisaroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualVISARoAmount)" />
			
			<xsl:variable name="ipadmanualvisaroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualVISARoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualvisaroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualVISARoAmount)" />
			
			<xsl:variable name="onlinevisaroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineVISARoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinevisaroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineVISARoAmount)" />

			<xsl:variable name="swipermast">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperMAST"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swipermasttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperMAST)" />
			
			<xsl:variable name="ipadswipermast">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperMAST"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswipermasttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperMAST)" />
			
			<xsl:variable name="chipmast">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipMAST"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipmasttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipMAST)" />
			
			<xsl:variable name="ipadchipmast">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipMAST"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipmasttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipMAST)" />
			
			<xsl:variable name="manualmast">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualMAST"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualmasttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualMAST)" />
			
			<xsl:variable name="ipadmanualmast">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualMAST"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualmasttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualMAST)" />
			
			<xsl:variable name="onlinemast">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineMAST"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinemasttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineMAST)" />
				
			<xsl:variable name="swipermastsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperMASTSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swipermastsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperMASTSurcharges)" />
			
			<xsl:variable name="ipadswipermastsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperMASTSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswipermastsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperMASTSurcharges)" />
			
			<xsl:variable name="chipmastsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipMASTSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipmastsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipMASTSurcharges)" />
			
			<xsl:variable name="ipadchipmastsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipMASTSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipmastsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipMASTSurcharges)" />
			
			<xsl:variable name="manualmastsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualMASTSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualmastsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualMASTSurcharges)" />
			
			<xsl:variable name="ipadmanualmastsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualMASTSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualmastsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualMASTSurcharges)" />
			
			<xsl:variable name="onlinemastsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineMASTSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinemastsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineMASTSurcharges)" />
			
			<xsl:variable name="swipermastroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperMASTRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swipermastroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperMASTRoAmount)" />
			
			<xsl:variable name="ipadswipermastroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperMASTRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswipermastroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperMASTRoAmount)" />
			
			<xsl:variable name="chipmastroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipMASTRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipmastroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipMASTRoAmount)" />
			
			<xsl:variable name="ipadchipmastroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipMASTRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipmastroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipMASTRoAmount)" />
			
			<xsl:variable name="manualmastroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualMASTRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualmastroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualMASTRoAmount)" />
			
			<xsl:variable name="ipadmanualmastroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualMASTRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualmastroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualMASTRoAmount)" />
			
			<xsl:variable name="onlinemastroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineMASTRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinemastroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineMASTRoAmount)" />

			<xsl:variable name="swiperdisc">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperDISC"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swiperdisctillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperDISC)" />
			
			<xsl:variable name="ipadswiperdisc">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperDISC"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswiperdisctillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperDISC)" />
			
			<xsl:variable name="chipdisc">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipDISC"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipdisctillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipDISC)" />
			
			<xsl:variable name="ipadchipdisc">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipDISC"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipdisctillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipDISC)" />
			
			<xsl:variable name="manualdisc">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualDISC"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualdisctillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualDISC)" />
			
			<xsl:variable name="ipadmanualdisc">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualDISC"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualdisctillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualDISC)" />
			
			<xsl:variable name="onlinedisc">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineDISC"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinedisctillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineDISC)" />
						
			<xsl:variable name="swiperdiscsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperDISCSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swiperdiscsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperDISCSurcharges)" />
			
			<xsl:variable name="ipadswiperdiscsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperDISCSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswiperdiscsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperDISCSurcharges)" />
			
			<xsl:variable name="chipdiscsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipDISCSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipdiscsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipDISCSurcharges)" />
			
			<xsl:variable name="ipadchipdiscsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipDISCSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipdiscsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipDISCSurcharges)" />
			
			<xsl:variable name="manualdiscsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualDISCSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualdiscsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualDISCSurcharges)" />
			
			<xsl:variable name="ipadmanualdiscsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualDISCSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualdiscsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualDISCSurcharges)" />
			
			<xsl:variable name="onlinediscsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineDISCSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinediscsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineDISCSurcharges)" />
			
			<xsl:variable name="swiperdiscroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperDISCRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swiperdiscroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperDISCRoAmount)" />
			
			<xsl:variable name="ipadswiperdiscroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperDISCRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswiperdiscroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperDISCRoAmount)" />
			
			<xsl:variable name="chipdiscroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipDISCRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipdiscroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipDISCRoAmount)" />
			
			<xsl:variable name="ipadchipdiscroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipDISCRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipdiscroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipDISCRoAmount)" />
			
			<xsl:variable name="manualdiscroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualDISCRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualdiscroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualDISCRoAmount)" />
			
			<xsl:variable name="ipadmanualdiscroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualDISCRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualdiscroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualDISCRoAmount)" />
			
			<xsl:variable name="onlinediscroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineDISCRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinediscroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineDISCRoAmount)" />

			<xsl:variable name="swiperdebit">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/SwiperDEBIT"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="swiperdebittillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/SwiperDEBIT)" />
			
			<xsl:variable name="ipadswiperdebit">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadSwiperDEBIT"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadswiperdebittillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadSwiperDEBIT)" />
			
			<xsl:variable name="chipdebit">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ChipDEBIT"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="chipdebittillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ChipDEBIT)" />
			
			<xsl:variable name="ipadchipdebit">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadChipDEBIT"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadchipdebittillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadChipDEBIT)" />
			
			<xsl:variable name="manualdebit">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/ManualDEBIT"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="manualdebittillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/ManualDEBIT)" />
			
			<xsl:variable name="ipadmanualdebit">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/IpadManualDEBIT"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="ipadmanualdebittillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/IpadManualDEBIT)" />
			
			<xsl:variable name="onlinedebit">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/OnlineDEBIT"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="onlinedebittillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/OnlineDEBIT)" />
			
			<xsl:variable name="amextotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/AMEXTotal"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="amextotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/AMEXTotal)" />
			
			<xsl:variable name="amextotalsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/AMEXTotalSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="amextotalsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/AMEXTotalSurcharges)" />

			<xsl:variable name="amextotalroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/AMEXTotalRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="amextotalroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/AMEXTotalRoAmount)" />

			<xsl:variable name="visatotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/VISATotal"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="visatotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/VISATotal)" />
			
			<xsl:variable name="visatotalsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/VISATotalSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="visatotalsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/VISATotalSurcharges)" />

			<xsl:variable name="visatotalroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/VISATotalRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="visatotalroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/VISATotalRoAmount)" />

			<xsl:variable name="mastertotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/MASTTotal"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="mastertotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/MASTTotal)" />
			
			<xsl:variable name="masttotalsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/MASTTotalSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="masttotalsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/MASTTotalSurcharges)" />

			<xsl:variable name="masttotalroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/MASTTotalRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="masttotalroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/MASTTotalRoAmount)" />

			<xsl:variable name="disctotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/DISCTotal"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="disctotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/DISCTotal)" />
			
			<xsl:variable name="disctotalsurcharges">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/DISCTotalSurcharges"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="disctotalsurchargestillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/DISCTotalSurcharges)" />

			<xsl:variable name="disctotalroamount">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/DISCTotalRoAmount"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="disctotalroamounttillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/DISCTotalRoAmount)" />

			<xsl:variable name="debittotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/DEBITTotal"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="debittotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/DEBITTotal)" />
			
			<xsl:variable name="cashtotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/CASH"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="cashtotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/CASH)" />
			
			<xsl:variable name="checktotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/REGULARCHECK"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="guaranteedchecktotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/GUARANTEEDCHECK"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="checktotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/REGULARCHECK)" />
			<xsl:variable name="guaranteedchecktotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/GUARANTEEDCHECK)" />
			
			<xsl:variable name="financetotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/FINANCE"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="financetotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/FINANCE)" />
			
			<xsl:variable name="swipertotalamex" select="$swiperamex + $ipadswiperamex + $chipamex + $ipadchipamex" />
			<xsl:variable name="swipertotalvisa" select="$swipervisa + $ipadswipervisa + $chipvisa + $ipadchipvisa" />
			<xsl:variable name="swipertotalmast" select="$swipermast + $ipadswipermast + $chipmast + $ipadchipmast" />
			<xsl:variable name="swipertotaldisc" select="$swiperdisc + $ipadswiperdisc + $chipdisc + $ipadchipdisc" />
			<xsl:variable name="swipertotaldebit" select="$swiperdebit + $ipadswiperdebit + $chipdebit + $ipadchipdebit" />
	
			<xsl:variable name="onmanualamex" select="$manualamex + $ipadmanualamex + $onlineamex" />
			<xsl:variable name="onmanualvisa" select="$manualvisa + $ipadmanualvisa + $onlinevisa" />
			<xsl:variable name="onmanualmast" select="$manualmast + $ipadmanualmast + $onlinemast" />
			<xsl:variable name="onmanualdisc" select="$manualdisc + $ipadmanualdisc + $onlinedisc" />
			<xsl:variable name="onmanualdebit" select="$manualdebit + $ipadmanualdebit + $onlinedebit" />

			<xsl:variable name="swipertotalamexsurcharges" select="$swiperamexsurcharges + $ipadswiperamexsurcharges + $chipamexsurcharges + $ipadchipamexsurcharges" />
			<xsl:variable name="swipertotalvisasurcharges" select="$swipervisasurcharges + $ipadswipervisasurcharges + $chipvisasurcharges + $ipadchipvisasurcharges" />
			<xsl:variable name="swipertotalmastsurcharges" select="$swipermastsurcharges + $ipadswipermastsurcharges + $chipmastsurcharges + $ipadchipmastsurcharges" />
			<xsl:variable name="swipertotaldiscsurcharges" select="$swiperdiscsurcharges + $ipadswiperdiscsurcharges + $chipdiscsurcharges + $ipadchipdiscsurcharges" />
	
			<xsl:variable name="onmanualamexsurcharges" select="$manualamexsurcharges + $ipadmanualamexsurcharges + $onlineamexsurcharges" />
			<xsl:variable name="onmanualvisasurcharges" select="$manualvisasurcharges + $ipadmanualvisasurcharges + $onlinevisasurcharges" />
			<xsl:variable name="onmanualmastsurcharges" select="$manualmastsurcharges + $ipadmanualmastsurcharges + $onlinemastsurcharges" />
			<xsl:variable name="onmanualdiscsurcharges" select="$manualdiscsurcharges + $ipadmanualdiscsurcharges + $onlinediscsurcharges" />

			<xsl:variable name="swipertotalamexroamount" select="$swiperamexroamount + $ipadswiperamexroamount + $chipamexroamount + $ipadchipamexroamount" />
			<xsl:variable name="swipertotalvisaroamount" select="$swipervisaroamount + $ipadswipervisaroamount + $chipvisaroamount + $ipadchipvisaroamount" />
			<xsl:variable name="swipertotalmastroamount" select="$swipermastroamount + $ipadswipermastroamount + $chipmastroamount + $ipadchipmastroamount" />
			<xsl:variable name="swipertotaldiscroamount" select="$swiperdiscroamount + $ipadswiperdiscroamount + $chipdiscroamount + $ipadchipdiscroamount" />
	
			<xsl:variable name="onmanualamexroamount" select="$manualamexroamount + $ipadmanualamexroamount + $onlineamexroamount" />
			<xsl:variable name="onmanualvisaroamount" select="$manualvisaroamount + $ipadmanualvisaroamount + $onlinevisaroamount" />
			<xsl:variable name="onmanualmastroamount" select="$manualmastroamount + $ipadmanualmastroamount + $onlinemastroamount" />
			<xsl:variable name="onmanualdiscroamount" select="$manualdiscroamount + $ipadmanualdiscroamount + $onlinediscroamount" />
			
			<xsl:variable name="swipertotalamextillnow" select="$swiperamextillnow + $ipadswiperamextillnow + $chipamextillnow + $ipadchipamextillnow" />
			<xsl:variable name="swipertotalvisatillnow" select="$swipervisatillnow + $ipadswipervisatillnow + $chipvisatillnow + $ipadchipvisatillnow" />
			<xsl:variable name="swipertotalmasttillnow" select="$swipermasttillnow + $ipadswipermasttillnow + $chipmasttillnow + $ipadchipmasttillnow" />
			<xsl:variable name="swipertotaldisctillnow" select="$swiperdisctillnow + $ipadswiperdisctillnow + $chipdisctillnow + $ipadchipdisctillnow" />
			<xsl:variable name="swipertotaldebittillnow" select="$swiperdebittillnow + $ipadswiperdebittillnow + $chipdebittillnow + $ipadchipdebittillnow" />
	
			<xsl:variable name="onmanualamextillnow" select="$manualamextillnow + $ipadmanualamextillnow + $onlineamextillnow" />
			<xsl:variable name="onmanualvisatillnow" select="$manualvisatillnow + $ipadmanualvisatillnow + $onlinevisatillnow" />
			<xsl:variable name="onmanualmasttillnow" select="$manualmasttillnow + $ipadmanualmasttillnow + $onlinemasttillnow" />
			<xsl:variable name="onmanualdisctillnow" select="$manualdisctillnow + $ipadmanualdisctillnow + $onlinedisctillnow" />
			<xsl:variable name="onmanualdebittillnow" select="$manualdebittillnow + $ipadmanualdebittillnow + $onlinedebittillnow" />
			
			<xsl:variable name="departmenttotal">
				<xsl:call-template name="get-number-from-string">
					<xsl:with-param name="input" select="current()/DepartmentTotal"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:variable name="departmenttotaltillnow" select="sum(/*/Departments/Department[position() &lt;= $index]/DepartmentTotal)" />
			
			<xsl:variable name="grossTotalLine">
				<xsl:choose>
					<xsl:when test="count(/*/Departments/Department) &gt; 1">
						<xsl:text>Gross Payments (</xsl:text>
						<xsl:value-of select="/*/Departments/Department[$index]/DepartmentName" />
						<xsl:text> only):</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>Gross Payments:</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			
			<xsl:variable name="grossTotalLineTillNow">
				<xsl:choose>
					<xsl:when test="count(/*/Departments/Department) &gt; 1">
						<xsl:text>Gross Payments (</xsl:text>
						<xsl:for-each select="/*/Departments/Department[position() &lt;= $index]/DepartmentName">
							<xsl:if test="position() &gt; 1">
								<xsl:text> + </xsl:text>
							</xsl:if>
							<xsl:value-of select="current()" />
						</xsl:for-each>
						<xsl:if test="$index = 1">
							<xsl:text> only</xsl:text>
						</xsl:if>
						<xsl:text>):</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>Gross Payments:</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			
			<xsl:if test="count(/*/Departments/Department) &gt; 1">	
				<tr>
	            	<td>
	                	<strong>
	                    	<span>
	                        	<font size="4">
	                            	<br><xsl:value-of select="current()/DepartmentName" /><xsl:text> Department</xsl:text></br>
	                        	</font>
	                    	</span>
	                	</strong>
	            	</td>
	        	</tr>
	        </xsl:if>
	        
	        <tr style="border-top:solid 1px #000000;">
	            <td  width = "50%">
	                <table  width = "95%">
	                	<colgroup>
	                		<col width="*" />
	                		<col width="110px" />
	                	</colgroup>
	                    <tr>
	                        <td align="left" colspan="2" style="font-weight:bold;text-decoration:underline;">
	                            <i>Retail Swiper Charges:</i>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Amex Charges (A)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalamex, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Fees
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalamexsurcharges , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Net Deposit
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalamexroamount , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Other cards(Discover, Master, Visa,...):
	                            </i>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Visa (V)
	                            </i>
	                        </td>
	                        <td align="left">
	                        	<xsl:value-of select="format-number($swipertotalvisa, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                MasterCard (M)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalmast, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Discover (D)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotaldisc, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Other Cards (V+M+D)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalvisa + $swipertotalmast + $swipertotaldisc , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Fees
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalvisasurcharges + $swipertotalmastsurcharges + $swipertotaldiscsurcharges , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Net Deposit
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalvisaroamount + $swipertotalmastroamount + $swipertotaldiscroamount , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                                <i>
	                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                    Debit (B)
	                                </i>
	                        </td>
	                        <td align="left">
	                                <xsl:value-of select="format-number($swipertotaldebit, '$#0.00;($#0.00)')" />
	                         </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Card Charges (A+V+M+D+B)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalamex + $swipertotalvisa + $swipertotalmast + $swipertotaldisc + $swipertotaldebit , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <span>Total Swiper Charges (A+V+M+D+B)</span>
	                            </i>
	                        </td>
	                        <td align="left" style="border-top:solid 1px #000000;">
	                            <xsl:value-of select="format-number($swipertotalamex + $swipertotalvisa + $swipertotalmast + $swipertotaldisc + $swipertotaldebit, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Fees
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalamexsurcharges + $swipertotalvisasurcharges + $swipertotalmastsurcharges + $swipertotaldiscsurcharges, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Net Deposit
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($swipertotalamexroamount + $swipertotalvisaroamount + $swipertotalmastroamount + $swipertotaldiscroamount + $swipertotaldebit , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                </table>
	            </td>
	            <td  width = "50%"/>
	        </tr>
	        <tr>
	            <td  width = "50%">
	                <table  width = "95%">
	                	<colgroup>
	                		<col width="*" />
	                		<col width="110px" />
	                	</colgroup>
	                    <tr>
	                        <td colspan="2">
	                            <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left" style="font-weight:bold;text-decoration:underline;">
	                            <i>Online/Manual Charges:</i>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Amex Charges (A)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualamex, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Fees
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualamexsurcharges , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Net Deposit
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualamexroamount , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Other cards(Discover, Master, Visa,...):
	                            </i>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Visa (V)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualvisa, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                MasterCard (M)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualmast, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Discover (D)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualdisc, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Other Cards (V+M+D)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualvisa + $onmanualmast + $onmanualdisc, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Fees
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualvisasurcharges + $onmanualmastsurcharges + $onmanualdiscsurcharges , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Net Deposit
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualvisaroamount + $onmanualmastroamount + $onmanualdiscroamount , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                            <td align="left">
	                                <i>
	                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                    Debit (B)
	                                </i>
	                            </td>
	                            <td align="left">
	                                <xsl:value-of select="format-number($onmanualdebit, '$#0.00;($#0.00)')" />
	                            </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Card Charges (A+V+M+D+B)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualamex + $onmanualvisa + $onmanualmast + $onmanualdisc + $onmanualdebit, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <span>Total Online/Manual Charges (A+V+M+D+B)</span>
	                            </i>
	                        </td>
	                        <td align="left" style="border-top:solid 1px #000000;">
	                            <xsl:value-of select="format-number($onmanualamex + $onmanualvisa + $onmanualmast + $onmanualdisc + $onmanualdebit, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Fees
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualamexsurcharges + $onmanualvisasurcharges + $onmanualmastsurcharges + $onmanualdiscsurcharges , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Net Deposit
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($onmanualamexroamount + $onmanualvisaroamount + $onmanualmastroamount + $onmanualdiscroamount + $onmanualdebit, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                </table>
	            </td>
	            <xsl:if test="count(/*/Departments/Department) &gt; 1 and $index &gt; 1">
	            		<xsl:text disable-output-escaping="yes">&lt;td  width = "50%"/&gt;</xsl:text>
	        		<xsl:text disable-output-escaping="yes">&lt;tr/&gt;</xsl:text>
	        		<xsl:text disable-output-escaping="yes">&lt;tr&gt;</xsl:text>
			            <td  width = "50%">
			                <table  width = "95%">
			                	<colgroup>
			                		<col width="*" />
			                		<col width="110px" />
			                	</colgroup>
			                    <tr>
			                        <td colspan="2">
			                            <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
			                        </td>
			                    </tr>
			                    <tr>
			                        <td align="left" style="font-weight:bold;text-decoration:underline;">
			                            <i><xsl:value-of select="$grossTotalLine" /></i>
			                        </td>
			                    </tr>
			                    <tr>
			                        <td align="left">
			                            <i>
			                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			                                Amex Charges (A)
			                            </i>
			                        </td>
			                        <td align="left">
			                            <xsl:value-of select="format-number($amextotal, '$#0.00;($#0.00)')" />
			                        </td>
			                    </tr>
								<tr>
									<td align="left" style="padding-left:30px;">
										<i>
											<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
											Fees
										</i>
									</td>
									<td align="left">
										<xsl:value-of select="format-number($amextotalsurcharges , '$#0.00;($#0.00)')" />
									</td>
								</tr>
								<tr>
									<td align="left" style="padding-left:30px;">
										<i>
											<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
											Net Deposit
										</i>
									</td>
									<td align="left">
										<xsl:value-of select="format-number($amextotalroamount , '$#0.00;($#0.00)')" />
									</td>
								</tr>
			                    <tr>
			                        <td align="left">
			                            <i>
			                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
			                                Other cards(Discover, Master, Visa,...):
			                            </i>
			                        </td>
			                    </tr>
			                    <tr>
			                        <td align="left">
			                            <i>
			                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			                                Visa (V)
			                            </i>
			                        </td>
			                        <td align="left">
			                            <xsl:value-of select="format-number($visatotal, '$#0.00;($#0.00)')" />
			                        </td>
			                    </tr>
			                    <tr>
			                        <td align="left">
			                            <i>
			                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			                                Master (M)
			                            </i>
			                        </td>
			                        <td align="left">
			                            <xsl:value-of select="format-number($mastertotal, '$#0.00;($#0.00)')" />
			                        </td>
			                    </tr>
			                    <tr>
			                        <td align="left">
			                            <i>
			                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			                                Discover (D)
			                            </i>
			                        </td>
			                        <td align="left">
			                            <xsl:value-of select="format-number($disctotal, '$#0.00;($#0.00)')" />
			                        </td>
			                    </tr>
			                    <tr style="">
			                        <td align="left">
			                            <i>
			                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
			                                Total Other Cards (V+M+D)
			                            </i>
			                        </td>
			                        <td align="left" style="">
			                            <xsl:value-of select="format-number($visatotal + $mastertotal + $disctotal, '$#0.00;($#0.00)')" />
			                        </td>
			                    </tr>
								<tr>
									<td align="left" style="padding-left:30px;">
										<i>
											<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
											Fees
										</i>
									</td>
									<td align="left">
										<xsl:value-of select="format-number($visatotalsurcharges + $masttotalsurcharges + $disctotalsurcharges , '$#0.00;($#0.00)')" />
									</td>
								</tr>
								<tr>
									<td align="left" style="padding-left:30px;">
										<i>
											<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
											Net Deposit
										</i>
									</td>
									<td align="left">
										<xsl:value-of select="format-number($visatotalroamount + $masttotalroamount + $disctotalroamount , '$#0.00;($#0.00)')" />
									</td>
								</tr>
			                    <tr>
			                            <td align="left">
			                                <i>
			                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			                                    Debit (B)
			                                </i>
			                            </td>
			                            <td align="left">
			                                <xsl:value-of select="format-number($debittotal, '$#0.00;($#0.00)')" />
			                            </td>
			                     </tr>
			                     <tr style="">
			                        <td align="left">
			                            <i>
			                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
			                                Total Card Charges (A+V+M+D+B)
			                            </i>
			                        </td>
			                        <td align="left" style="">
			                            <xsl:value-of select="format-number($amextotal + $visatotal + $mastertotal + $disctotal + $debittotal, '$#0.00;($#0.00)')" />
			                        </td>
			                    </tr>
			                    <xsl:if test="$isCashEnabled=1">
			                        <tr>
			                            <td align="left">
			                                <i>
			                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			                                    Total Cash Charges (C)
			                                </i>
			                            </td>
			                            <td align="left">
			                                <xsl:value-of select="format-number($cashtotal, '$#0.00;($#0.00)')" />
			                            </td>
			                        </tr>
			                    </xsl:if>
			                    <xsl:if test="$isCheckEnabled=1">
			                        <tr>
			                            <td align="left">
			                                <i>
			                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			                                    Total Regular Check Charges (H)
			                                </i>
			                            </td>
			                            <td align="left">
			                                <xsl:value-of select="format-number($checktotal, '$#0.00;($#0.00)')" />
			                            </td>
			                        </tr>
			                    </xsl:if>
			                    <xsl:if test="$isGuaranteedCheckEnabled=1 or $guaranteedchecktotal &gt; 0">
			                        <tr>
			                            <td align="left">
			                                <i>
			                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			                                    Total Guaranteed Check Charges Today (G)
			                                </i>
			                            </td>
			                            <td align="left">
			                                <xsl:value-of select="format-number($guaranteedchecktotal, '$#0.00;($#0.00)')" />
			                            </td>
			                        </tr>
			                    </xsl:if>
			                    <xsl:if test="$isFinanceEnabled=1">
			                        <tr>
			                            <td align="left">
			                                <i>
			                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			                                    Total Financed (F)
			                                </i>
			                            </td>
			                            <td align="left">
			                                <xsl:value-of select="format-number($financetotal, '$#0.00;($#0.00)')" />
			                            </td>
			                        </tr>
			                    </xsl:if>
			                    <tr style="border-bottom:solid 1px #000000; border-top: solid 1px black;">
			                        <td align="left">
			                            <i>
			                                <span>Total Payments (A+V+M+D+B</span>
			                                <xsl:if test="$isCashEnabled=1">
			                                    <span>+C</span>
			                                </xsl:if>
			                                <xsl:if test="$isCheckEnabled=1">
			                                    <span>+H</span>
			                                </xsl:if>
			                                <xsl:if test="$isGuaranteedCheckEnabled=1 or $guaranteedchecktotal &gt; 0">
			                                    <span>+G</span>
			                                </xsl:if>
			                                <xsl:if test="$isFinanceEnabled=1">
			                                    <span>+F</span>
			                                </xsl:if>
			                                <span>)</span>
			                            </i>
			                        </td>
			                        <td align="left" style="border-top:solid 1px #000000;">
			                            <xsl:value-of select="format-number($departmenttotal , '$#0.00;($#0.00)')" />
			                        </td>
			                    </tr>
								<tr>
									<td align="left" style="padding-left:30px;">
										<i>
											<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
											Total Fees
										</i>
									</td>
									<td align="left">
										<xsl:value-of select="format-number(departmenttotalsurcharges , '$#0.00;($#0.00)')" />
									</td>
								</tr>
								<tr>
									<td align="left" style="padding-left:30px;">
										<i>
											<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
											Total Net Deposit
										</i>
									</td>
									<td align="left">
										<xsl:value-of select="format-number(departmenttotalroamount , '$#0.00;($#0.00)')" />
									</td>
								</tr>
			                </table>
			            </td>
	            </xsl:if>
	            
	            
	            <td  width = "50%">
	                <table  width = "95%">
	                	<colgroup>
	                		<col width="*" />
	                		<col width="110px" />
	                	</colgroup>
	                    <tr>
	                        <td colspan="2">
	                            <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left" style="font-weight:bold;text-decoration:underline;">
	                            <i><xsl:value-of select="$grossTotalLineTillNow" /></i>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Amex Charges (A)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($amextotaltillnow, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Fees
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($amextotalsurchargestillnow , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Net Deposit
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($amextotalroamounttillnow , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Other cards(Discover, Master, Visa,...):
	                            </i>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Visa (V)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($visatotaltillnow, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Master (M)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($mastertotaltillnow, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                Discover (D)
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($disctotaltillnow, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr style="">
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Other Cards (V+M+D)
	                            </i>
	                        </td>
	                        <td align="left" style="">
	                            <xsl:value-of select="format-number($visatotaltillnow + $mastertotaltillnow + $disctotaltillnow, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Fees
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($visatotalsurchargestillnow + $masttotalsurchargestillnow + $disctotalsurchargestillnow , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Net Deposit
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($visatotalroamounttillnow + $masttotalroamounttillnow + $disctotalroamounttillnow , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <tr>
	                            <td align="left">
	                                <i>
	                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                    Debit (B)
	                                </i>
	                            </td>
	                            <td align="left">
	                                <xsl:value-of select="format-number($debittotaltillnow, '$#0.00;($#0.00)')" />
	                            </td>
	                   </tr>
	                   <tr style="">
	                        <td align="left">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Card Charges (A+V+M+D+B)
	                            </i>
	                        </td>
	                        <td align="left" style="">
	                            <xsl:value-of select="format-number($amextotaltillnow + $visatotaltillnow + $mastertotaltillnow + $disctotaltillnow + $debittotaltillnow, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                    <xsl:if test="$isCashEnabled=1">
	                        <tr>
	                            <td align="left">
	                                <i>
	                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                    Total Cash Charges (C)
	                                </i>
	                            </td>
	                            <td align="left">
	                                <xsl:value-of select="format-number($cashtotaltillnow, '$#0.00;($#0.00)')" />
	                            </td>
	                        </tr>
	                    </xsl:if>
	                    <xsl:if test="$isCheckEnabled=1">
	                        <tr>
	                            <td align="left">
	                                <i>
	                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                    Total Regular Check Charges (H)
	                                </i>
	                            </td>
	                            <td align="left">
	                                <xsl:value-of select="format-number($checktotaltillnow, '$#0.00;($#0.00)')" />
	                            </td>
	                        </tr>
	                    </xsl:if>
	                    <xsl:if test="$isGuaranteedCheckEnabled=1  or $guaranteedchecktotaltillnow &gt; 0">
	                        <tr>
	                            <td align="left">
	                                <i>
	                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                    Total Guaranteed Check Charges (G)
	                                </i>
	                            </td>
	                            <td align="left">
	                                <xsl:value-of select="format-number($guaranteedchecktotaltillnow, '$#0.00;($#0.00)')" />
	                            </td>
	                        </tr>
	                    </xsl:if>
	                    <xsl:if test="$isFinanceEnabled=1">
	                        <tr>
	                            <td align="left">
	                                <i>
	                                    <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
	                                    Total Financed (F)
	                                </i>
	                            </td>
	                            <td align="left">
	                                <xsl:value-of select="format-number($financetotaltillnow, '$#0.00;($#0.00)')" />
	                            </td>
	                        </tr>
	                    </xsl:if>
	                    <tr style="border-bottom:solid 1px #000000; border-top: solid 1px black;">
	                        <td align="left">
	                            <i>
	                                <span>Total Payments (A+V+M+D+B</span>
	                                <xsl:if test="$isCashEnabled=1">
	                                    <span>+C</span>
	                                </xsl:if>
	                                <xsl:if test="$isCheckEnabled=1">
	                                    <span>+H</span>
	                                </xsl:if>
	                                <xsl:if test="$isGuaranteedCheckEnabled=1 or $guaranteedchecktotaltillnow &gt; 0">
	                                    <span>+G</span>
	                                </xsl:if>
	                                <xsl:if test="$isFinanceEnabled=1">
	                                    <span>+F</span>
	                                </xsl:if>
	                                <span>)</span>
	                            </i>
	                        </td>
	                        <td align="left" style="border-top:solid 1px #000000;">
	                            <xsl:value-of select="format-number($departmenttotaltillnow, '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Fees
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($departmenttotalsurchargestillnow , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
						<tr>
	                        <td align="left" style="padding-left:30px;">
	                            <i>
	                                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	                                Total Net Deposit
	                            </i>
	                        </td>
	                        <td align="left">
	                            <xsl:value-of select="format-number($departmenttotalroamounttillnow , '$#0.00;($#0.00)')" />
	                        </td>
	                    </tr>
	                </table>
	            </td>
	        </tr>
	        <xsl:if test="$isGuaranteedCheckEnabled=1 and boolean(current()/FutureAmountTakenTodayTotal)">
	        		<xsl:variable name="futureAmountTakenTodayTotal" select="current()/FutureAmountTakenTodayTotal" />
	        		<xsl:variable name="futureTxnTakenTodayTotal" select="current()/FutureTxnTakenTodayTotal" />
	        		<xsl:variable name="rosWithFutureTxnTakenToday" select="current()/ROsWithFutureTxnTakenToday" />
	        			<tr>
						<td colspan="2">
							<table style="width: 1064px; margin: 0px 6px;">
								<tbody>
									<tr>
										<td><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></td>
									</tr>
									<tr style="border-bottom:solid 1px #000000;">
										<td colspan="2" style="border-bottom: solid 1px #000000; font-size: 17px; font-weight: bold; font-style: italic;">
											Pending Future Guaranteed Check Charges
										</td>
									</tr>
									<tr>
										<td colspan="2" style="height:30px;">
											<span style="text-decoration: underline; font-size: 17px;">
												Pending Future Guaranteed Check Charges:
											</span>
										</td>
									</tr>
									<tr>
										<td>
											<span style="margin-left: 25px;">
												Total Amount Future Guaranteed Check Charges Taken Today (FG):
											</span>
										</td>
										<td style="width: 110px;">
											<span><xsl:value-of select="format-number($futureAmountTakenTodayTotal, '$#0.00;($#0.00)')" /></span>
										</td>
									</tr>
									<tr>
										<td>
											<span style="margin-left: 25px;">
												Total Number Future Guaranteed Check Charges Taken Today:
											</span>
										</td>
										<td style="width: 110px;">
											<span><xsl:value-of select="$futureTxnTakenTodayTotal" /></span>
										</td>
									</tr>
									<tr>
										<td>
											<span style="margin-left: 25px;">
												Total Number of ROs with Pending Future Guaranteed Checks Taken Today:
											</span>
										</td>
										<td style="width: 110px;">
											<span><xsl:value-of select="$rosWithFutureTxnTakenToday" /></span>
										</td>
									</tr>
									<tr>
										<td><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></td>
									</tr>
									<xsl:if test="boolean(current()/Row[@Type='PendingPresentedToday'])">
										<tr>
											<td colspan="2" style="height:30px;">
												<span style="text-decoration: underline; font-size: 17px;">
													Pending Future Guaranteed Check Charges That Were Presented Today:
												</span>
											</td>
										</tr>
										<xsl:for-each select="current()/Row[@Type='PendingPresentedToday']">
											<tr>
												<td colspan="2">
													<span style="margin-left: 25px;">
														<xsl:text disable-output-escaping="yes">RO&amp;nbsp;</xsl:text>
														<xsl:value-of select="current()/RONumber" />
														<xsl:text disable-output-escaping="yes">,&amp;nbsp;</xsl:text>
														<xsl:value-of select="format-number(current()/TransAmount, '$#0.00;($#0.00)')" />
														<xsl:text disable-output-escaping="yes">,&amp;nbsp;</xsl:text>
														<xsl:value-of select="current()/PresentationDate" />
														<xsl:text disable-output-escaping="yes">,&amp;nbsp;</xsl:text>
														<xsl:value-of select="current()/ApprovalNumber" />
														<xsl:text disable-output-escaping="yes">,&amp;nbsp;</xsl:text>
														<xsl:value-of select="current()/PayerName" />
													</span>
												</td>
											</tr>
										</xsl:for-each>
									</xsl:if>
									<xsl:if test="boolean(current()/Row[@Type='PendingToday'])">
										<tr>
											<td colspan="2" style="height: 30px;">
												<span style="text-decoration: underline; font-size: 17px;">
													Total Running List of Pending Future Guaranteed Check Charges
												</span>
											</td>
										</tr>
										<xsl:for-each select="current()/Row[@Type='PendingToday']">
											<tr>
												<td colspan="2">
													<span style="margin-left: 25px;">
														<xsl:text disable-output-escaping="yes">RO&amp;nbsp;</xsl:text>
														<xsl:value-of select="current()/RONumber" />
														<xsl:text disable-output-escaping="yes">,&amp;nbsp;</xsl:text>
														<xsl:value-of select="format-number(current()/TransAmount, '$#0.00;($#0.00)')" />
														<xsl:text disable-output-escaping="yes">,&amp;nbsp;</xsl:text>
														<xsl:value-of select="current()/PresentationDate" />
														<xsl:text disable-output-escaping="yes">,&amp;nbsp;</xsl:text>
														<xsl:value-of select="current()/ApprovalNumber" />
														<xsl:text disable-output-escaping="yes">,&amp;nbsp;</xsl:text>
														<xsl:value-of select="current()/PayerName" />
													</span>
												</td>
											</tr>
										</xsl:for-each>
									</xsl:if>
								</tbody>
							</table>
						</td>
					</tr>
	        </xsl:if>
	    </xsl:for-each>
	
	</xsl:template>
	
	<xsl:template name="custom-format-number">
        <xsl:param name="input" select="''"/>
        <xsl:variable name="formattedinput">
			<xsl:call-template name="get-number-from-string">
				<xsl:with-param name="input" select="$input" />
			</xsl:call-template>
		</xsl:variable>
        <xsl:value-of select="format-number($formattedinput, '$#0.00;($#0.00)')"/>
    </xsl:template>
    
    <xsl:template name="get-number-from-string">
        <xsl:param name="input" select="''"/>
        <xsl:variable name="formattedinput">
			<xsl:choose>
				<xsl:when test="string(number($input))='NaN'">0</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$input" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
        <xsl:value-of select="$formattedinput"/>
    </xsl:template>
    
</xsl:stylesheet>
