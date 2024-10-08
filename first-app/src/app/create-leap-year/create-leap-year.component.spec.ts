import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CreateLeapYearComponent } from './create-leap-year.component';

describe('CreateLeapYearComponent', () => {
  let component: CreateLeapYearComponent;
  let fixture: ComponentFixture<CreateLeapYearComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CreateLeapYearComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CreateLeapYearComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
