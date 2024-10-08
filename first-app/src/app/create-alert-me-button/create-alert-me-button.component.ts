import { Component } from '@angular/core';



@Component({
  selector: 'app-create-alert-me-button',
  standalone: true,
  imports: [],
  templateUrl: './create-alert-me-button.component.html',
  styleUrl: './create-alert-me-button.component.scss'
})
export class CreateAlertMeButtonComponent {
  alertButton(){
    alert("Hello World")
  }
}
