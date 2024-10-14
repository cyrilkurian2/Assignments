import { Routes } from '@angular/router';

import { CreateAlertMeButtonComponent } from './create-alert-me-button/create-alert-me-button.component';
import { CreateLinkToGoogleComponent } from './create-link-to-google/create-link-to-google.component';
import { CreateListWithColorComponent} from './create-list-with-color/create-list-with-color.component';
import { CreateNestedListComponent} from './create-nested-list/create-nested-list.component';
import { TableCreationComponent} from './table-creation/table-creation.component';
import { CreateLeapYearComponent} from './create-leap-year/create-leap-year.component';
import { CreateShoppingListComponent} from './create-shopping-list/create-shopping-list.component';

export const routes: Routes = [

    { path: 'alert-box-button', component: CreateAlertMeButtonComponent},
    { path: 'link-to-google', component: CreateLinkToGoogleComponent},
    { path: 'list-with-color', component: CreateListWithColorComponent},
    { path: 'nested-list', component: CreateNestedListComponent},
    { path: 'table-creation', component: TableCreationComponent},
    { path: 'leap-year', component:CreateLeapYearComponent},
    { path: 'shopping-list', component: CreateShoppingListComponent},
  ];
