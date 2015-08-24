# Redmine Simple Billing plugin (NOT WORKING YET)

This plugin allows you create invoices and send it to your customers, and track statuses of invoices.

## Description

This is really simple plugin, here is my context in which I'm working:

* Bills are global (you have billing menu item on top left menu). You see all invoices for all projects on one page.
* Customers are project-scoped. You can change customer information in project's settings. This also means that one project = one customer (in case of simplicity).
* On any project's issues page select multiple (closed/finished) issues you want to include in invoice, get right-click menu and click "create invoice"
* You can customize invoice template just like any other erb file in simple_billing/app/views/bills/invoice.html.erb



## Getting started

### 1. Install the plugin

1. Clone to redmine plugins directory simple_billing: `git clone https://github.com/IvanShamatov/simple_billing`
2. Run bundle install
3. Run rake redmine:plugins RAILS_ENV=production

### 2. Settings...

IN PROGRESS