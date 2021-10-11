import { LightningElement, wire,track,api } from 'lwc';
import accountList from '@salesforce/apex/AccountListForForEach.accountList';

export default class ForEachDirectiveExample extends LightningElement {
    @wire(accountList) accounts;
}