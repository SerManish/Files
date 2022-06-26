<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template name="final_totals_table_body">
        <xsl:variable name="isCashEnabled" select="/*/IsCashEnabled" />
        <xsl:variable name="isCheckEnabled" select="/*/IsCheckEnabled" />
        <xsl:variable name="isGuaranteedCheckEnabled" select="/*/IsGuaranteedCheckEnabled" />
        <xsl:variable name="isFinanceEnabled" select="/*/IsFinanceEnabled" />
        <xsl:for-each select="/*/Departments/Department">
            <xsl:variable name="index" select="position()" />
            <xsl:variable name="swiperamex">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/SwiperAMEX" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="swiperamextillnow" select="sum(/*/Departments/Department[position() <= $index]/SwiperAMEX)" />
            <xsl:variable name="ipadswiperamex">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadSwiperAMEX" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadswiperamextillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadSwiperAMEX)" />
            <xsl:variable name="chipamex">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ChipAMEX" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="chipamextillnow" select="sum(/*/Departments/Department[position() <= $index]/ChipAMEX)" />
            <xsl:variable name="ipadchipamex">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadChipAMEX" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadchipamextillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadChipAMEX)" />
            <xsl:variable name="manualamex">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ManualAMEX" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="manualamextillnow" select="sum(/*/Departments/Department[position() <= $index]/ManualAMEX)" />
            <xsl:variable name="ipadmanualamex">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadManualAMEX" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadmanualamextillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadManualAMEX)" />
            <xsl:variable name="onlineamex">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/OnlineAMEX" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="onlineamextillnow" select="sum(/*/Departments/Department[position() <= $index]/OnlineAMEX)" />
            <xsl:variable name="swipervisa">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/SwiperVISA" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="swipervisatillnow" select="sum(/*/Departments/Department[position() <= $index]/SwiperVISA)" />
            <xsl:variable name="ipadswipervisa">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadSwiperVISA" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadswipervisatillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadSwiperVISA)" />
            <xsl:variable name="chipvisa">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ChipVISA" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="chipvisatillnow" select="sum(/*/Departments/Department[position() <= $index]/ChipVISA)" />
            <xsl:variable name="ipadchipvisa">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadChipVISA" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadchipvisatillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadChipVISA)" />
            <xsl:variable name="manualvisa">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ManualVISA" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="manualvisatillnow" select="sum(/*/Departments/Department[position() <= $index]/ManualVISA)" />
            <xsl:variable name="ipadmanualvisa">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadManualVISA" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadmanualvisatillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadManualVISA)" />
            <xsl:variable name="onlinevisa">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/OnlineVISA" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="onlinevisatillnow" select="sum(/*/Departments/Department[position() <= $index]/OnlineVISA)" />
            <xsl:variable name="swipermast">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/SwiperMAST" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="swipermasttillnow" select="sum(/*/Departments/Department[position() <= $index]/SwiperMAST)" />
            <xsl:variable name="ipadswipermast">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadSwiperMAST" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadswipermasttillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadSwiperMAST)" />
            <xsl:variable name="chipmast">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ChipMAST" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="chipmasttillnow" select="sum(/*/Departments/Department[position() <= $index]/ChipMAST)" />
            <xsl:variable name="ipadchipmast">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadChipMAST" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadchipmasttillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadChipMAST)" />
            <xsl:variable name="manualmast">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ManualMAST" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="manualmasttillnow" select="sum(/*/Departments/Department[position() <= $index]/ManualMAST)" />
            <xsl:variable name="ipadmanualmast">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadManualMAST" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadmanualmasttillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadManualMAST)" />
            <xsl:variable name="onlinemast">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/OnlineMAST" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="onlinemasttillnow" select="sum(/*/Departments/Department[position() <= $index]/OnlineMAST)" />
            <xsl:variable name="swiperdisc">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/SwiperDISC" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="swiperdisctillnow" select="sum(/*/Departments/Department[position() <= $index]/SwiperDISC)" />
            <xsl:variable name="ipadswiperdisc">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadSwiperDISC" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadswiperdisctillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadSwiperDISC)" />
            <xsl:variable name="chipdisc">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ChipDISC" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="chipdisctillnow" select="sum(/*/Departments/Department[position() <= $index]/ChipDISC)" />
            <xsl:variable name="ipadchipdisc">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadChipDISC" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadchipdisctillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadChipDISC)" />
            <xsl:variable name="manualdisc">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ManualDISC" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="manualdisctillnow" select="sum(/*/Departments/Department[position() <= $index]/ManualDISC)" />
            <xsl:variable name="ipadmanualdisc">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadManualDISC" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadmanualdisctillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadManualDISC)" />
            <xsl:variable name="onlinedisc">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/OnlineDISC" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="onlinedisctillnow" select="sum(/*/Departments/Department[position() <= $index]/OnlineDISC)" />
            <xsl:variable name="swiperdebit">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/SwiperDEBIT" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="swiperdebittillnow" select="sum(/*/Departments/Department[position() <= $index]/SwiperDEBIT)" />
            <xsl:variable name="ipadswiperdebit">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadSwiperDEBIT" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadswiperdebittillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadSwiperDEBIT)" />
            <xsl:variable name="chipdebit">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ChipDEBIT" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="chipdebittillnow" select="sum(/*/Departments/Department[position() <= $index]/ChipDEBIT)" />
            <xsl:variable name="ipadchipdebit">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadChipDEBIT" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadchipdebittillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadChipDEBIT)" />
            <xsl:variable name="manualdebit">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/ManualDEBIT" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="manualdebittillnow" select="sum(/*/Departments/Department[position() <= $index]/ManualDEBIT)" />
            <xsl:variable name="ipadmanualdebit">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/IpadManualDEBIT" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="ipadmanualdebittillnow" select="sum(/*/Departments/Department[position() <= $index]/IpadManualDEBIT)" />
            <xsl:variable name="onlinedebit">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/OnlineDEBIT" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="onlinedebittillnow" select="sum(/*/Departments/Department[position() <= $index]/OnlineDEBIT)" />
            <xsl:variable name="amextotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/AMEXTotal" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="amextotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/AMEXTotal)" />
            <xsl:variable name="visatotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/VISATotal" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="visatotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/VISATotal)" />
            <xsl:variable name="mastertotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/MASTTotal" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="mastertotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/MASTTotal)" />
            <xsl:variable name="disctotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/DISCTotal" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="disctotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/DISCTotal)" />
            <xsl:variable name="paypalexpresstotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/PAYPALEXPRESSTotal" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="paypalexpresstotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/PAYPALEXPRESSTotal)" />
            <xsl:variable name="debittotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/DEBITTotal" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="debittotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/DEBITTotal)" />
            <xsl:variable name="cashtotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/CASH" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="cashtotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/CASH)" />
            <xsl:variable name="checktotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/REGULARCHECK" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="guaranteedchecktotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/GUARANTEEDCHECK" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="checktotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/REGULARCHECK)" />
            <xsl:variable name="guaranteedchecktotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/GUARANTEEDCHECK)" />
            <xsl:variable name="financetotal">
                <xsl:call-template name="get-number-from-string">
                    <xsl:with-param name="input" select="current()/FINANCE" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="financetotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/FINANCE)" />
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
                    <xsl:with-param name="input" select="current()/DepartmentTotal" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="departmenttotaltillnow" select="sum(/*/Departments/Department[position() <= $index]/DepartmentTotal)" />
            <xsl:variable name="grossTotalLine">
                <xsl:choose>
                    <xsl:when test="count(/*/Departments/Department) > 1">
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
                    <xsl:when test="count(/*/Departments/Department) > 1">
                        <xsl:text>Gross Payments (</xsl:text>
                        <xsl:for-each select="/*/Departments/Department[position() <= $index]/DepartmentName">
                            <xsl:if test="position() > 1">
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
            <xsl:if test="count(/*/Departments/Department) > 1">
                <tr>
                    <td>
                        <strong>
                            <span>
                                <font size="4">
                                    <br>
                                        <xsl:value-of select="current()/DepartmentName" />
                                        <xsl:text> Department</xsl:text>
                                    </br>
                                </font>
                            </span>
                        </strong>
                    </td>
                </tr>
            </xsl:if>
            <tr style="border-top:solid 1px #000000;">
                <td width="50%">
                    <table width="95%">
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
                                    Amex Charges (A)
                                </i>
                            </td>
                            <td align="left">
                                <xsl:value-of select="format-number($swipertotalamex, '$#0.00;($#0.00)')" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                    Other cards(Discover, Master, Visa,...):
                                </i>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                    Total Other Cards (V+M+D)
                                </i>
                            </td>
                            <td align="left">
                                <xsl:value-of select="format-number($swipertotalvisa + $swipertotalmast + $swipertotaldisc , '$#0.00;($#0.00)')" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
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
                    </table>
                </td>
                <td width="50%" />
            </tr>
            <tr>
                <td width="50%">
                    <table width="95%">
                        <colgroup>
                            <col width="*" />
                            <col width="110px" />
                        </colgroup>
                        <tr>
                            <td colspan="2">
                                <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
                                    Amex Charges (A)
                                </i>
                            </td>
                            <td align="left">
                                <xsl:value-of select="format-number($onmanualamex, '$#0.00;($#0.00)')" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                    Other cards(Discover, Master, Visa,...):
                                </i>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                    Total Other Cards (V+M+D)
                                </i>
                            </td>
                            <td align="left">
                                <xsl:value-of select="format-number($onmanualvisa + $onmanualmast + $onmanualdisc, '$#0.00;($#0.00)')" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
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
                                <xsl:value-of select="format-number($onmanualamex + $onmanualvisa + $onmanualmast + $onmanualdisc + $paypalexpresstotal + $onmanualdebit, '$#0.00;($#0.00)')" />
                            </td>
                        </tr>
                    </table>
                </td>
                <xsl:if test="count(/*/Departments/Department) > 1 and $index > 1">
                    <xsl:text disable-output-escaping="yes">
                        <td width="50%" />
                    </xsl:text>
                    <xsl:text disable-output-escaping="yes">
                        <tr />
                    </xsl:text>
                    <xsl:text disable-output-escaping="yes">
                        <tr>
                    </xsl:text>
                    <td width="50%">
                        <table width="95%">
                            <colgroup>
                                <col width="*" />
                                <col width="110px" />
                            </colgroup>
                            <tr>
                                <td colspan="2">
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="font-weight:bold;text-decoration:underline;">
                                    <i>
                                        <xsl:value-of select="$grossTotalLine" />
                                    </i>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <i>
                                        <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
                                        Amex Charges (A)
                                    </i>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="format-number($amextotal, '$#0.00;($#0.00)')" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <i>
                                        <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                        Other cards(Discover, Master, Visa,...):
                                    </i>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <i>
                                        <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                        <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                        <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                        <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                        Total Other Cards (V+M+D)
                                    </i>
                                </td>
                                <td align="left" style="">
                                    <xsl:value-of select="format-number($visatotal + $mastertotal + $disctotal, '$#0.00;($#0.00)')" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <i>
                                        <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                        <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
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
                                            <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                            <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
                                            Total Regular Check Charges (H)
                                        </i>
                                    </td>
                                    <td align="left">
                                        <xsl:value-of select="format-number($checktotal, '$#0.00;($#0.00)')" />
                                    </td>
                                </tr>
                            </xsl:if>
                            <xsl:if test="$isGuaranteedCheckEnabled=1 or $guaranteedchecktotal > 0">
                                <tr>
                                    <td align="left">
                                        <i>
                                            <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                            <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                        <xsl:if test="$isGuaranteedCheckEnabled=1 or $guaranteedchecktotal > 0">
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
                        </table>
                    </td>
                </xsl:if>
                <td width="50%">
                    <table width="95%">
                        <colgroup>
                            <col width="*" />
                            <col width="110px" />
                        </colgroup>
                        <tr>
                            <td colspan="2">
                                <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight:bold;text-decoration:underline;">
                                <i>
                                    <xsl:value-of select="$grossTotalLineTillNow" />
                                </i>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
                                    Amex Charges (A)
                                </i>
                            </td>
                            <td align="left">
                                <xsl:value-of select="format-number($amextotaltillnow, '$#0.00;($#0.00)')" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                    Other cards(Discover, Master, Visa,...):
                                </i>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                    Total Other Cards (V+M+D)
                                </i>
                            </td>
                            <td align="left" style="">
                                <xsl:value-of select="format-number($visatotaltillnow + $mastertotaltillnow + $disctotaltillnow, '$#0.00;($#0.00)')" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <i>
                                    <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
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
                                        <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                        <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
                                        Total Regular Check Charges (H)
                                    </i>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="format-number($checktotaltillnow, '$#0.00;($#0.00)')" />
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="$isGuaranteedCheckEnabled=1 or $guaranteedchecktotaltillnow > 0">
                            <tr>
                                <td align="left">
                                    <i>
                                        <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                        <xsl:text disable-output-escaping="yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</xsl:text>
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
                                    <xsl:if test="$isGuaranteedCheckEnabled=1 or $guaranteedchecktotaltillnow > 0">
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
                                    <td>
                                        <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                    </td>
                                </tr>
                                <tr style="border-bottom:solid 1px #000000;">
                                    <td colspan="2" style="border-bottom: solid 1px #000000; font-size: 17px; font-weight: bold; font-style: italic;"> Pending Future Guaranteed Check Charges </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height:30px;">
                                        <span style="text-decoration: underline; font-size: 17px;"> Pending Future Guaranteed Check Charges: </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span style="margin-left: 25px;"> Total Amount Future Guaranteed Check Charges Taken Today (FG): </span>
                                    </td>
                                    <td style="width: 110px;">
                                        <span>
                                            <xsl:value-of select="format-number($futureAmountTakenTodayTotal, '$#0.00;($#0.00)')" />
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span style="margin-left: 25px;"> Total Number Future Guaranteed Check Charges Taken Today: </span>
                                    </td>
                                    <td style="width: 110px;">
                                        <span>
                                            <xsl:value-of select="$futureTxnTakenTodayTotal" />
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span style="margin-left: 25px;"> Total Number of ROs with Pending Future Guaranteed Checks Taken Today: </span>
                                    </td>
                                    <td style="width: 110px;">
                                        <span>
                                            <xsl:value-of select="$rosWithFutureTxnTakenToday" />
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <xsl:text disable-output-escaping="yes">&nbsp;</xsl:text>
                                    </td>
                                </tr>
                                <xsl:if test="boolean(current()/Row[@Type='PendingPresentedToday'])">
                                    <tr>
                                        <td colspan="2" style="height:30px;">
                                            <span style="text-decoration: underline; font-size: 17px;"> Pending Future Guaranteed Check Charges That Were Presented Today: </span>
                                        </td>
                                    </tr>
                                    <xsl:for-each select="current()/Row[@Type='PendingPresentedToday']">
                                        <tr>
                                            <td colspan="2">
                                                <span style="margin-left: 25px;">
                                                    <xsl:text disable-output-escaping="yes">RO&nbsp;</xsl:text>
                                                    <xsl:value-of select="current()/RONumber" />
                                                    <xsl:text disable-output-escaping="yes">,&nbsp;</xsl:text>
                                                    <xsl:value-of select="format-number(current()/TransAmount, '$#0.00;($#0.00)')" />
                                                    <xsl:text disable-output-escaping="yes">,&nbsp;</xsl:text>
                                                    <xsl:value-of select="current()/PresentationDate" />
                                                    <xsl:text disable-output-escaping="yes">,&nbsp;</xsl:text>
                                                    <xsl:value-of select="current()/ApprovalNumber" />
                                                    <xsl:text disable-output-escaping="yes">,&nbsp;</xsl:text>
                                                    <xsl:value-of select="current()/PayerName" />
                                                </span>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </xsl:if>
                                <xsl:if test="boolean(current()/Row[@Type='PendingToday'])">
                                    <tr>
                                        <td colspan="2" style="height: 30px;">
                                            <span style="text-decoration: underline; font-size: 17px;"> Total Running List of Pending Future Guaranteed Check Charges </span>
                                        </td>
                                    </tr>
                                    <xsl:for-each select="current()/Row[@Type='PendingToday']">
                                        <tr>
                                            <td colspan="2">
                                                <span style="margin-left: 25px;">
                                                    <xsl:text disable-output-escaping="yes">RO&nbsp;</xsl:text>
                                                    <xsl:value-of select="current()/RONumber" />
                                                    <xsl:text disable-output-escaping="yes">,&nbsp;</xsl:text>
                                                    <xsl:value-of select="format-number(current()/TransAmount, '$#0.00;($#0.00)')" />
                                                    <xsl:text disable-output-escaping="yes">,&nbsp;</xsl:text>
                                                    <xsl:value-of select="current()/PresentationDate" />
                                                    <xsl:text disable-output-escaping="yes">,&nbsp;</xsl:text>
                                                    <xsl:value-of select="current()/ApprovalNumber" />
                                                    <xsl:text disable-output-escaping="yes">,&nbsp;</xsl:text>
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
        <xsl:param name="input" select="''" />
        <xsl:variable name="formattedinput">
            <xsl:call-template name="get-number-from-string">
                <xsl:with-param name="input" select="$input" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="format-number($formattedinput, '$#0.00;($#0.00)')" />
    </xsl:template>
    <xsl:template name="get-number-from-string">
        <xsl:param name="input" select="''" />
        <xsl:variable name="formattedinput">
            <xsl:choose>
                <xsl:when test="string(number($input))='NaN'">0</xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$input" />
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:value-of select="$formattedinput" />
    </xsl:template>
</xsl:stylesheet>