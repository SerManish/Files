<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="https://payment-report-xslt.s3.ap-south-1.amazonaws.com/payment_report_total.xslt" />
	<xsl:template match="/">
	<html>
		<head>
			<style>
				thead { display: table-header-group }
				tfoot { display: table-row-group }
				tr { page-break-inside: avoid }
			</style>
		</head>
		<body>
				<br /><br />
				<b>Daily Close [Fees]</b>
				<br />
				<b>
					<u>
						Dealer:
						<xsl:value-of select="PaymentReport/DealerName" /><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
					</u>
				</b>
				<br />
				<br />
				Close Date:
				<b>
					<xsl:value-of select="PaymentReport/CloseDate" /><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
				</b>
				<br />
				Daily Transactions from
				<b>
					<xsl:value-of select="PaymentReport/CloseStartTime" /><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
				</b>
				to
				<b>
					<xsl:value-of select="PaymentReport/CloseEndTime" /><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
				</b>

				<br />
				Daily Transaction Total:
				<b>
					<xsl:value-of select="format-number(sum(PaymentReport/DailyTotalAmount), '$#0.00;($#0.00)')" />
					<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
				</b>

				<br />
				<br />
				Transaction Count:
				<b>
					<xsl:value-of select="PaymentReport/TransCount" /><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
				</b>
				<br />
				<br />
				<xsl:for-each select="PaymentReport/Departments/Department">
					<xsl:if test="current()/Row">
						<!-- If even a single "Row" is present, that means there were transactions for this dept on this day -->
						<xsl:if test="/*/IsMultiDeptPaymentsEnabled/text() = 1">
							<div style="font-weight:bold;">
								<xsl:text>For </xsl:text><xsl:value-of select="current()/DepartmentName" /><xsl:text> Department:</xsl:text>
							</div>
						</xsl:if>
						<xsl:call-template name="transaction_table" /><xsl:text disable-output-escaping="yes"></xsl:text>
					</xsl:if>
				</xsl:for-each>
				<xsl:call-template name="final_totals_table" />
				<br />
				Thank You for your Business!!
				<br />
				myKaarma Team
		</body>
	</html>
			
	</xsl:template>

	<xsl:template name="transaction_table">
		<br />
		<table width="1100px"
			style="border-width: 1px; 
				border-style: solid; 
				border-color: gray; 
				border-collapse: collapse; 
				background-color:white;">
			<xsl:call-template name="transaction_table_header" />
			<xsl:call-template name="transaction_table_body" />
		</table>
		<br />
	</xsl:template>

	<xsl:template name="transaction_table_header">
		<tr bgcolor="#777777">

			<th style="color:#FFFFFF;">RRO Number</th>
			<th style="color:#FFFFFF;">Date</th>
			<th style="color:#FFFFFF;">Details</th>
			<th style="color:#FFFFFF;">RO Owner</th>
			<th style="color:#FFFFFF;">User Dept</th>
			<th style="color:#FFFFFF;">Approval Code</th>
			<th style="color:#FFFFFF;">CC Type</th>
			<th style="color:#FFFFFF;">Payment Type</th>
			<th style="color:#FFFFFF;">Card No.</th>
			<th style="color:#FFFFFF;">Amount</th>
			
		</tr>
	</xsl:template>
	<xsl:template name="transaction_table_body">
		<xsl:for-each select="current()/Row">
			<xsl:variable name="isEven" select="current()/@IsEven" />
			<xsl:variable name="rowtype" select="current()/@Type" />
			<xsl:choose>
				<xsl:when test="$isEven = 1">
					<xsl:if test="$rowtype='Transaction'">
						<xsl:call-template name="transaction_table_body_even_row"></xsl:call-template>
					</xsl:if>
					<xsl:if test="$rowtype='CashierName'">
						<xsl:call-template name="transaction_table_body_service_advisor_even_row"></xsl:call-template>
					</xsl:if>
					<xsl:if test="$rowtype='SubTotal'">
						<xsl:call-template name="transaction_table_body_subtotal_even_row"></xsl:call-template>
					</xsl:if>
					<xsl:if test="$rowtype='RefundDescription'">
						<xsl:call-template name="transaction_table_body_refunddescription_even_row"></xsl:call-template>
					</xsl:if>
				</xsl:when>
				<xsl:otherwise>
					<xsl:if test="$rowtype='Transaction'">
						<xsl:call-template name="transaction_table_body_odd_row"></xsl:call-template>
					</xsl:if>
					<xsl:if test="$rowtype='CashierName'">
						<xsl:call-template name="transaction_table_body_service_advisor_odd_row"></xsl:call-template>
					</xsl:if>
					<xsl:if test="$rowtype='SubTotal'">
						<xsl:call-template name="transaction_table_body_subtotal_odd_row"></xsl:call-template>
					</xsl:if>
					<xsl:if test="$rowtype='RefundDescription'">
						<xsl:call-template name="transaction_table_body_refunddescription_odd_row"></xsl:call-template>
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="transaction_table_body_even_row">
		<tr bgcolor="#DDDDDD" height="40px">
			<td align="center" style="width: 100px;">
				<xsl:value-of select="OrderNumber" />
			</td>
			<td align="center" style="width: 200px;">
				<xsl:value-of select="TransactionDate" />
			</td>
			<td align="center" style="width: 200px; text-align: center;">
				<xsl:value-of select="TransactionDetails" />
			</td>
			<td align="center" style="width: 100px;">
				<xsl:value-of select="RoOwner" />
			</td>
			<td align="center" style="width: 60px;">
				<xsl:value-of select="UserDept" />
			</td>
			<td align="center" style="width: 100px;">
				<xsl:value-of select="ApprovalCode" />
			</td>
			<td align="center" style="width: 60px;">
				<xsl:value-of select="CreditCardType" />
			</td>
			<td align="center" style="width: 100px;">
				<xsl:value-of select="PaymentType" />
			</td>
			<td align="center" style="width: 200px;">
				<xsl:value-of select="CCNumber" />
			</td>
			<td align="center" style="width: 60px;">
				<xsl:value-of select="format-number(sum(TransactionAmount), '$#0.00;($#0.00)')" />
			</td>
		</tr>
	</xsl:template>

	<xsl:template name="transaction_table_body_odd_row">
		<tr bgcolor="#FFFFFF" height="40px">
			<td align="center" style="width: 100px;">
				<xsl:value-of select="OrderNumber" />
			</td>
			<td align="center" style="width: 200px;">
				<xsl:value-of select="TransactionDate" />
			</td>
			<td align="center" style="width: 200px; text-align: center;">
				<xsl:value-of select="TransactionDetails" />
			</td>
			<td align="center" style="width: 100px;">
				<xsl:value-of select="RoOwner" />
			</td>
			<td align="center" style="width: 60px;">
					<xsl:value-of select="UserDept" />
			</td>
			<td align="center" style="width: 100px;">
					<xsl:value-of select="ApprovalCode" />
			</td>
			<td align="center" style="width: 60px;">
				<xsl:value-of select="CreditCardType" />
			</td>
			<td align="center" style="width: 100px;">
				<xsl:value-of select="PaymentType" />
			</td>
			<td align="center" style="width: 200px;">
				<xsl:value-of select="CCNumber" />
			</td>
			<td align="center" style="width: 60px;">
				<xsl:value-of select="format-number(sum(TransactionAmount), '$#0.00;($#0.00)')" />
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template name="transaction_table_body_subtotal_even_row">
		<tr bgcolor="#DDDDDD" height="25px">
			<td align="right" colspan="8" style="padding-right:35px;">
				<i>
					SubTotal: 
				</i>
			</td>
			<td align="center" style="border-top:solid 1px #000000; border-bottom:double medium #000000;">
				<i>
					<xsl:value-of select="format-number(sum(SubTotalAmount), '$#0.00;($#0.00)')" />
				</i>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template name="transaction_table_body_subtotal_odd_row">
		<tr bgcolor="#FFFFFF" height="25px">
			<td align="right" colspan="8" style="padding-right:35px;">
				<i>
					SubTotal: 
				</i>
			</td>
			<td align="center" style="border-top:solid 1px #000000; border-bottom:double medium #000000;">
				<i>
					<xsl:value-of select="format-number(sum(SubTotalAmount), '$#0.00;($#0.00)')" />
				</i>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template name="transaction_table_body_refunddescription_even_row">
		<tr bgcolor="#DDDDDD">
			<td colspan="9" style="padding: 3px 10px;">
				<i>
					<xsl:value-of select="RefundDescription" />
					<xsl:text>, RO Total Amount </xsl:text>
					<xsl:value-of select="format-number(ROTotal, '$#0.00;($#0.00)')" />
				</i>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template name="transaction_table_body_refunddescription_odd_row">
		<tr bgcolor="#FFFFFF">
			<td colspan="9" style="padding: 3px 10px;">
				<i>
					<xsl:value-of select="RefundDescription" />
					<xsl:text>, RO Total Amount </xsl:text>
					<xsl:value-of select="format-number(ROTotal, '$#0.00;($#0.00)')" />
				</i>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template name="transaction_table_body_service_advisor_even_row">
		<tr bgcolor="#DDDDDD" height="25px">
			<td align="left" colspan="9" style="padding-right:10px;">
				<i> <xsl:value-of select="Role" />: </i>
				<b><xsl:value-of select="Name" /></b>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template name="transaction_table_body_service_advisor_odd_row">
		<tr bgcolor="#FFFFFF" height="25px">
			<td align="left" colspan="9" style="padding-right:10px;">
				<i> <xsl:value-of select="Role" />: </i>
				<b><xsl:value-of select="Name" /></b>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template name="final_totals_table">
		<br />
		<table
			style="border-width: 0px;
				border-collapse: collapse; 
				background-color:white;" width = "1100px">
			<xsl:variable name="transactionCount" select="PaymentReport/TransCount" />
			<xsl:if test="$transactionCount > 0">
				<xsl:call-template name="final_totals_table_body" />
			</xsl:if>
		</table>
		<br />
	</xsl:template>
	
</xsl:stylesheet>
