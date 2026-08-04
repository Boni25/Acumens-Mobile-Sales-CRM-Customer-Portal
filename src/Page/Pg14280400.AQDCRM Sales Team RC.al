page 14280400 "AQD CRM Sales Team RC"
{
    Caption = 'Customer Relations Manager', Comment = 'Use same translation as ''Profile Description'' (if applicable)';
    PageType = RoleCenter;
    Description = 'Functionality for Sales Team';
    layout
    {
        area(rolecenter)
        {
            part(Control1; "AQD CRM Activities")
            {
                ApplicationArea = All;
            }
            part(Control2; "AQD CRM Opportunities")
            {
                ApplicationArea = All;
            }
            part(Control6; "Sales Pipeline Chart")
            {
                ApplicationArea = All;
            }
            part(Control4; "Opportunity Chart")
            {
                ApplicationArea = All;
            }
            part(Control11; "Relationship Performance")
            {
                ApplicationArea = All;
            }
            part(PowerBIEmbeddedReportPart; "Power BI Embedded Report Part")
            {
                ApplicationArea = All;
            }
            part("Report Inbox Part"; "Report Inbox Part")
            {
                ApplicationArea = Basic, Suite;
            }
            systempart(MyNotes; MyNotes)
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(Reporting)
        {
            action("Customer - &Order Summary")
            {
                ApplicationArea = All;
                Caption = 'Customer - &Order Summary';
                Image = "Report";
                RunObject = Report "Customer - Order Summary";
                ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
            }
            action("Customer - &Top 10 List")
            {
                ApplicationArea = All;
                Caption = 'Customer - &Top 10 List';
                Image = "Report";
                RunObject = Report "Customer - Top 10 List";
                ToolTip = 'View which customers purchase the most or owe the most in a selected period. Only customers that have either purchases during the period or a balance at the end of the period will be included.';
            }
            separator(Action17)
            {
            }
            action("S&ales Statistics")
            {
                ApplicationArea = All;
                Caption = 'S&ales Statistics';
                Image = "Report";
                ObsoleteState = Pending;
                Visible = false;
                ObsoleteReason = 'Moved to Acumens CRM AppOnApp NA';
                // RunObject = Report "Customer Sales Statistics";
                ToolTip = 'View detailed information about sales to your customers.';
            }
            action("Salesperson - Sales &Statistics")
            {
                ApplicationArea = All;
                Caption = 'Salesperson - Sales &Statistics';
                ObsoleteState = Pending;
                ObsoleteReason = 'Moved to Acumens CRM AppOnApp NA';
                Visible = false;
                Image = "Report";
                //  RunObject = Report "Salesperson Statistics by Inv.";
                ToolTip = 'View amounts for sales, profit, invoice discount, and payment discount, as well as profit percentage, for each salesperson for a selected period. The report also shows the adjusted profit and adjusted profit percentage, which reflect any changes to the original costs of the items in the sales.';
            }
            separator(Action22)
            {
            }
            group(Setups)
            {
                Caption = 'Setups';

                action(Setup)
                {
                    ApplicationArea = All;
                    RunObject = page "AQD CRM Enhancement Setup";
                    Caption = 'Acumens CRM Setup';
                    Image = Setup;
                    ToolTip = 'Executes the Acumens CRM Setup action.';
                }
                action("Email Templates")
                {
                    Image = Template;
                    ApplicationArea = All;
                    Caption = 'Email Templates';
                    RunObject = page "AQD Contact Email Templates";
                    ToolTip = 'view or Create Contact Email Templates to apply to emails';
                }
                action("Sales Forms E-Mail Setup")
                {
                    Image = Setup;
                    ApplicationArea = All;
                    Caption = 'Sales Forms E-Mail Setup';
                    RunObject = page "AQD Sales Forms E-Mail Setup";
                }
            }
        }
        area(creation)
        {
            action(NewContact)
            {
                AccessByPermission = TableData Contact = IMD;
                ApplicationArea = All;
                Caption = 'Contact';
                Image = AddContacts;
                RunObject = Page "AQD Contact Card";
                RunPageMode = Create;
                ToolTip = 'Create a new contact. Contacts are persons at your business partners that you use to communicate business activities with or that you target marketing activities towards.';
            }
            action(NewOpportunity)
            {
                AccessByPermission = TableData Opportunity = IMD;
                ApplicationArea = All;
                Caption = 'Opportunity';
                Image = NewOpportunity;
                RunObject = Page "Opportunity Card";
                RunPageMode = Create;
                ToolTip = 'View the sales opportunities that are handled by salespeople for the contact. Opportunities must involve a contact and can be linked to campaigns.';
            }
            action("Sales &Quote")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales &Quote';
                Image = NewSalesQuote;
                RunObject = Page "Sales Quote";
                RunPageMode = Create;
                ToolTip = 'Create a new sales quote to offer items or services to a customer.';
            }
            action("Sales &Invoice")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales &Invoice';
                Image = NewSalesInvoice;
                RunObject = Page "Sales Invoice";
                RunPageMode = Create;
                ToolTip = 'Create a new invoice for the sales of items or services. Invoice quantities cannot be posted partially.';
            }

            action("Sales &Order")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales &Order';
                Image = Document;
                RunObject = Page "Sales Order";
                RunPageMode = Create;
                ToolTip = 'Create a new sales order for items or services.';
            }
            action("Sales &Return Order")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales &Return Order';
                Image = ReturnOrder;
                RunObject = Page "Sales Return Order";
                RunPageMode = Create;
                ToolTip = 'Compensate your customers for incorrect or damaged items that you sent to them and received payment for. Sales return orders enable you to receive items from multiple sales documents with one sales return, automatically create related sales credit memos or other return-related documents, such as a replAQDment sales order, and support warehouse documents for the item handling. Note: If an erroneous sale has not been paid yet, you can simply cancel the posted sales invoice to automatically revert the financial transaction.';
            }
            action("Sales &Credit Memo")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales &Credit Memo';
                Image = CreditMemo;
                RunObject = Page "Sales Credit Memo";
                RunPageMode = Create;
                ToolTip = 'Create a new sales credit memo to revert a posted sales invoice.';
            }
            group(Forms)
            {
                Caption = 'Forms';
                action("Special Order Forms")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Special Order Forms';
                    RunObject = Page "AQD Special Order Forms";
                    ToolTip = 'Executes the Special Order Forms action.';
                }
                action("Sample Request Forms")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sample Request Forms';
                    RunObject = Page "AQD Sample Request Forms";
                    ToolTip = 'Executes the Sample Request Forms action.';
                }
                action("Sourcing Request Forms")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sourcing Request Forms';
                    RunObject = Page "AQD Sourcing Request Forms";
                    ToolTip = 'Executes the Sourcing Request Forms action.';
                }
                action("Transfer Order Forms")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Transfer Order Forms';
                    RunObject = Page "AQD Transfer Order Forms";
                    ToolTip = 'Executes the Transfer Order Forms action.';
                }
                action("Custom Products Forms")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Custom Products Forms';
                    RunObject = Page "AQD Custom Products Forms";
                    ToolTip = 'Executes the Custom Products Forms action.';
                }
            }

        }
        area(embedding)
        {
            action(Action58)
            {
                ApplicationArea = All;
                Caption = 'Salespersons';
                RunObject = Page "Salespersons/Purchasers";
                ToolTip = 'View or edit information about the sales people that work for you and which customers they are assigned to.';
            }
            action(ActionName)
            {
                ApplicationArea = All;
                Caption = 'Contacts';
                RunObject = page "AQD Contact List";
                ToolTip = 'View or edit Information about AAPB Contacts';
            }
            action(Customers)
            {
                ApplicationArea = All;
                Caption = 'Customers';
                Image = Customer;
                RunObject = Page "Customer List";
                ToolTip = 'View or edit detailed information for the customers that you trade with. From each customer card, you can open related information, such as sales statistics and ongoing orders, and you can define special prices and line discounts that you grant if certain conditions are met.';
            }
            action(Items)
            {
                ApplicationArea = All;
                Caption = 'Items';
                Image = Item;
                RunObject = Page "Item List";
                ToolTip = 'View or edit detailed information for the products that you trade in. The item card can be of type Inventory or Service to specify if the item is a physical unit or a labor time unit. Here you also define if items in inventory or on incoming orders are automatically reserved for outbound documents and whether order tracking links are created between demand and supply to reflect planning actions.';
            }
            action("Sales Cycles")
            {
                ApplicationArea = All;
                Caption = 'Sales Cycles';
                RunObject = Page "Sales Cycles";
                ToolTip = 'View the different sales cycles that you use to manage sales opportunities.';
            }
            action("Task List")
            {
                ApplicationArea = All;
                Caption = 'Task List';
                RunObject = Page "Task List";
                ToolTip = 'View the tasks List for Salespersons.';
            }

            action(Opportunities)
            {
                ApplicationArea = All;
                Caption = 'Opportunities';
                RunObject = Page "Opportunity List";
                ToolTip = 'View the sales opportunities that are handled by salespeople for the contact. Opportunities must involve a contact and can be linked to campaigns.';
            }
            action("Sales Quotes")
            {
                ApplicationArea = All;
                Caption = 'Sales Quotes';
                Image = Quote;
                RunObject = Page "Sales Quotes";
                ToolTip = 'Make offers to customers to sell certain products on certain delivery and payment terms. While you negotiate with a customer, you can change and resend the sales quote as much as needed. When the customer accepts the offer, you convert the sales quote to a sales invoice or a sales order in which you process the sale.';
            }

            action("Master Sales Orders")
            {
                ApplicationArea = All;
                Caption = 'Master Sales Orders';
                Image = "Order";
                RunObject = Page "AQD CP Master SO List";
                ToolTip = 'Executes the Master Orders action.';
            }
            action("Sales Orders")
            {
                ApplicationArea = All;
                Caption = 'Sales Orders';
                Image = "Order";
                RunObject = Page "Sales Order List";
                ToolTip = 'Record your agreements with customers to sell certain products on certain delivery and payment terms. Sales orders, unlike sales invoices, allow you to ship partially, deliver directly from your vendor to your customer, initiate warehouse handling, and print various customer-facing documents. Sales invoicing is integrated in the sales order process.';
            }
            action("Sales Invoices")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales Invoices';
                RunObject = Page "Sales Invoice List";
                ToolTip = 'Register your sales to customers and invite them to pay according to the delivery and payment terms by sending them a sales invoice document. Posting a sales invoice registers shipment and records an open receivable entry on the customer''s account, which will be closed when payment is received. To manage the shipment process, use sales orders, in which sales invoicing is integrated.';
            }

            action("Sales Return Orders E")
            {
                ApplicationArea = SalesReturnOrder;
                Caption = 'Sales Return Orders';
                RunObject = Page "Sales Return Order List";
                ToolTip = 'Compensate your customers for incorrect or damaged items that you sent to them and received payment for. Sales return orders enable you to receive items from multiple sales documents with one sales return, automatically create related sales credit memos or other return-related documents, such as a replAQDment sales order, and support warehouse documents for the item handling. Note: If an erroneous sale has not been paid yet, you can simply cancel the posted sales invoice to automatically revert the financial transaction.';
            }
            action("Sales Credit Memos E")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales Credit Memos';
                RunObject = Page "Sales Credit Memos";
                ToolTip = 'Revert the financial transactions involved when your customers want to cancel a purchase or return incorrect or damaged items that you sent to them and received payment for. To include the correct information, you can create the sales credit memo from the related posted sales invoice or you can create a new sales credit memo with copied invoice information. If you need more control of the sales return process, such as warehouse documents for the physical handling, use sales return orders, in which sales credit memos are integrated. Note: If an erroneous sale has not been paid yet, you can simply cancel the posted sales invoice to automatically revert the financial transaction.';
            }
            action("Posted Sales Invoices")
            {
                ApplicationArea = All;
                Caption = 'Posted Sales Invoices';
                Image = Invoice;
                RunObject = page "Posted Sales Invoices";
                ToolTip = 'Executes the Posted Sales Invoices action.';
            }

        }

        area(sections)
        {
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                ToolTip = 'View the posting history for sales, shipments, and inventory.';
                action(Action32)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Sales Invoices';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Invoices";
                    ToolTip = 'Open the list of posted sales invoices.';
                }
                action(Action34)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Sales Credit Memos';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Credit Memos";
                    ToolTip = 'Open the list of posted sales credit memos.';
                }
                action("Posted Return Receipts")
                {
                    ApplicationArea = SalesReturnOrder;
                    Caption = 'Posted Return Receipts';
                    Image = PostedReturnReceipt;
                    RunObject = Page "Posted Return Receipts";
                    ToolTip = 'Open the list of posted return receipts.';
                }
                action(Action40)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Sales Shipments';
                    Image = PostedShipment;
                    RunObject = Page "Posted Sales Shipments";
                    ToolTip = 'Open the list of posted sales shipments.';
                }
                action("Issued Reminders")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Issued Reminders';
                    RunObject = Page "Issued Reminder List";
                    ToolTip = 'Opens the list of issued reminders.';
                }
                action("Issued Finance Charge Memos")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Issued Finance Charge Memos';
                    RunObject = Page "Issued Fin. Charge Memo List";
                    ToolTip = 'Opens the list of issued finance charge memos.';
                }
            }
            group("Administration Sales/Purchase")
            {
                Caption = 'Administration Sales';
                Image = AdministrationSalesPurchases;
                action("Customer Price Groups")
                {
                    ApplicationArea = All;
                    Caption = 'Customer Price Groups';
                    RunObject = Page "Customer Price Groups";
                    ToolTip = 'View a list of your customer price groups.';
                }
                action("Cust. Invoice Discounts")
                {
                    ApplicationArea = All;
                    Caption = 'Cust. Invoice Discounts';
                    RunObject = Page "Cust. Invoice Discounts";
                    ToolTip = 'View or edit invoice discounts that you grant to certain customers.';
                }
                action("Item Disc. Groups")
                {
                    ApplicationArea = All;
                    Caption = 'Item Disc. Groups';
                    RunObject = Page "Item Disc. Groups";
                    ToolTip = 'View or edit discount group codes that you can use as criteria when you grant special discounts to customers.';
                }
            }
            group(Analysis)
            {
                Caption = 'Analysis';
                action("Sales Analysis Reports")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sales Analysis Reports';
                    RunObject = Page "Analysis Report Sale";
                    ToolTip = 'Analyze the dynamics of your sales according to key sales performance indicators that you select, for example, sales turnover in both amounts and quantities, contribution margin, or progress of actual sales against the budget. You can also use the report to analyze your average sales prices and evaluate the sales performance of your sales force.';
                }
                action("Sales Analysis by Dimensions")
                {
                    ApplicationArea = Dimensions;
                    Caption = 'Sales Analysis by Dimensions';
                    RunObject = Page "Analysis View List Sales";
                    ToolTip = 'View sales amounts in G/L accounts by their dimension values and other filters that you define in an analysis view and then show in a matrix window.';
                }
                action("Sales Budgets")
                {
                    ApplicationArea = SalesBudget;
                    Caption = 'Sales Budgets';
                    RunObject = Page "Budget Names Sales";
                    ToolTip = 'Enter item sales values of type amount, quantity, or cost for expected item sales in different time periods. You can create sales budgets by items, customers, customer groups, or other dimensions in your business. The resulting sales budgets can be reviewed here or they can be used in comparisons with actual sales data in sales analysis reports.';
                }
            }
        }
        area(Processing)
        {
            group("Sales Prices")
            {
                Caption = 'Sales Prices';
#if not CLEAN23
                action("Sales Price &Worksheet")
                {
                    AccessByPermission = TableData "Sales Price Worksheet" = IMD;
                    ApplicationArea = All;
                    Caption = 'Sales Price &Worksheet';
                    Image = PriceWorksheet;
                    RunPageView = where("Object Type" = const(Page), "Object ID" = const(7023)); // "Sales Price Worksheet";
                    RunObject = Page "Role Center Page Dispatcher";
                    ToolTip = 'Manage sales prices for individual customers, for a group of customers, for all customers, or for a campaign.';
                    ObsoleteState = Pending;
                    ObsoleteReason = 'ReplAQDd by the new implementation (V16) of price calculation.';
                    ObsoleteTag = '19.0';
                }
                action("Sales &Prices")
                {
                    AccessByPermission = TableData "Sales Price and Line Disc Buff" = IMD;
                    ApplicationArea = All;
                    Caption = 'Sales &Prices';
                    Image = SalesPrices;
                    RunPageView = where("Object Type" = const(Page), "Object ID" = const(7002)); // "Sales Prices";
                    RunObject = Page "Role Center Page Dispatcher";
                    ToolTip = 'Define how to set up sales price agreements. These sales prices can be for individual customers, for a group of customers, for all customers, or for a campaign.';
                    ObsoleteState = Pending;
                    ObsoleteReason = 'ReplAQDd by the new implementation (V16) of price calculation.';
                    ObsoleteTag = '19.0';
                }
                action("Sales Line &Discounts")
                {
                    AccessByPermission = TableData "Sales Price and Line Disc Buff" = IMD;
                    ApplicationArea = All;
                    Caption = 'Sales Line &Discounts';
                    Image = SalesLineDisc;
                    RunPageView = where("Object Type" = const(Page), "Object ID" = const(7004)); // "Sales Line Discounts";
                    RunObject = Page "Role Center Page Dispatcher";
                    ToolTip = 'View or edit sales line discounts that you grant when certain conditions are met, such as customer, quantity, or ending date. The discount agreements can be for individual customers, for a group of customers, for all customers or for a campaign.';
                    ObsoleteState = Pending;
                    ObsoleteReason = 'ReplAQDd by the new implementation (V16) of price calculation.';
                    ObsoleteTag = '19.0';
                }
#else
                action("Sales Price &Worksheet")
                {
                   ApplicationArea =All;
                    Caption = 'Sales Price &Worksheet';
                    Image = PriceWorksheet;
                    RunObject = Page "Price Worksheet";
                    ToolTip = 'Manage sales prices for individual customers, for a group of customers, for all customers, or for a campaign.';
                }
                action("Price Lists")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = '&Prices';
                    Image = SalesPrices;
                    RunObject = Page "Sales Price Lists";
                    ToolTip = 'View or set up sales price lists for products that you sell to the customer. A product price is automatically granted on invoice lines when the specified criteria are met, such as customer, quantity, or ending date.';
                }
#endif
            }
            separator(History)
            {
                Caption = 'History';
                IsHeader = true;
            }
            action("Navi&gate")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Find entries...';
                Image = Navigate;
                RunObject = Page Navigate;
                ShortCutKey = 'Ctrl+Alt+Q';
                ToolTip = 'Find entries and documents that exist for the document number and posting date on the selected document. (Formerly this action was named Navigate.)';
            }

        }
    }
}
