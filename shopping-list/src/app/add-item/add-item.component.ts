// import { Component } from '@angular/core';

// @Component({
//   selector: 'app-add-item',
//   standalone: true,
//   imports: [],
//   templateUrl: './add-item.component.html',
//   styleUrl: './add-item.component.scss'
// })
// export class AddItemComponent {

// }


import { Component, EventEmitter, Output } from '@angular/core';
import { FormsModule } from '@angular/forms'; 
import { CommonModule } from '@angular/common'; 

@Component({
  selector: 'app-add-item',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl:'./add-item.component.html'
  
})
export class AddItemComponent {
  newItem: string = '';
  @Output() itemAdded = new EventEmitter<string>();

  addItem() {
    const trimmedItem = this.newItem.trim();
    if (trimmedItem) {
      this.itemAdded.emit(trimmedItem);
      this.newItem = '';
    }
  }
}
