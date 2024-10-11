import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

import {TableCreationComponent} from  './table-creation/table-creation.component';
import {CreateLinkToGoogleComponent} from './create-link-to-google/create-link-to-google.component';
import {CreateListWithColorComponent} from './create-list-with-color/create-list-with-color.component';
import {CreateNestedListComponent} from './create-nested-list/create-nested-list.component';
import {CreateAlertMeButtonComponent} from './create-alert-me-button/create-alert-me-button.component';
import {CreateLeapYearComponent} from './create-leap-year/create-leap-year.component';
import {CreateShoppingListComponent} from './create-shopping-list/create-shopping-list.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,
    TableCreationComponent,
    CreateLinkToGoogleComponent,
    CreateListWithColorComponent,
    CreateNestedListComponent,
    CreateAlertMeButtonComponent,
    CreateLeapYearComponent,
    CreateShoppingListComponent
  ],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})


export class AppComponent {
  title = 'first-app';
}
