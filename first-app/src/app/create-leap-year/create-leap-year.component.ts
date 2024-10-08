import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common'; 

@Component({
  selector: 'app-create-leap-year',
  standalone: true,
  imports: [FormsModule, CommonModule], 
  templateUrl: './create-leap-year.component.html',
  styleUrls: ['./create-leap-year.component.scss']
})
export class CreateLeapYearComponent {
  yearInput: number | null = null; 
  resultMessage: string = ''; 
  result: Boolean | false = false;

  checkLeapYear(){
    
    if (this.yearInput !== null) {
    this.result= (this.yearInput % 400 === 0) || (this.yearInput % 100 !== 0 && this.yearInput % 4 === 0);
    this.resultMessage = `${this.yearInput} is ${this.result ? 'a Leap Year' : 'not a Leap Year'}`;
    } 
  
  }
}
