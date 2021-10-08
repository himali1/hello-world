trigger MaintenanceRequest on Case (before update, after insert) {
        // ToDo: Call MaintenanceRequestHelper.updateWorkOrders 
        if(Trigger.isAfter) MaintenanceRequestHelper.updateWorkOrders(Trigger.New); 
}