import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CreateAlertMeButtonComponent } from './create-alert-me-button.component';

describe('CreateAlertMeButtonComponent', () => {
  let component: CreateAlertMeButtonComponent;
  let fixture: ComponentFixture<CreateAlertMeButtonComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CreateAlertMeButtonComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CreateAlertMeButtonComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
