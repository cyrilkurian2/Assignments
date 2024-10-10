// import { Component } from '@angular/core';
// import { RouterOutlet } from '@angular/router';

// @Component({
//   selector: 'app-root',
//   standalone: true,
//   imports: [RouterOutlet],
//   templateUrl: './app.component.html',
//   styleUrl: './app.component.scss'
// })
// export class AppComponent {
//   title = 'shopping-list';
// }

import { Component } from '@angular/core'; 
import { CommonModule } from '@angular/common'; 
import { AddItemComponent } from '../app/add-item/add-item.component'; 
import { ViewItemComponent } from '../app/view-item/view-item.component'; 

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, AddItemComponent, ViewItemComponent],
  templateUrl: './app.component.html'
})
export class AppComponent {
 
 
}
