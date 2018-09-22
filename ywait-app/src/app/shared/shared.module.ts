import { NgModule } from '../../../node_modules/@angular/core';
import { MaterialModule } from '../material.module';
import { FlexLayoutModule } from '../../../node_modules/@angular/flex-layout';
import { FormsModule } from '../../../node_modules/@angular/forms';
import { CommonModule } from '../../../node_modules/@angular/common';



@NgModule({
  imports: [
    MaterialModule,
    FlexLayoutModule,
    FormsModule,
    CommonModule
  ],
  exports: [
    MaterialModule,
    FlexLayoutModule,
    FormsModule,
    CommonModule
  ]
})
export class SharedModule {

}
