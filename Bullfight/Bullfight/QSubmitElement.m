//
// Copyright 2011 ESCOZ Inc  - http://escoz.com
//
// Licensed under the Apache License, Version 2.0 (the "License"); you may not use this
// file except in compliance with the License. You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software distributed under
// the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
// ANY KIND, either express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//


#import "QSubmitElement.h"
#import "SimpleButtonCell.h"

@implementation QSubmitElement

- (QSubmitElement *)initWithTitle:(NSString *)title Value:(id)value {
    self = [super init];
    _title = title;
    
    [self setEnabled:YES];
    
    return self;
}


- (UITableViewCell *)getCellForTableView:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller {
    //QTableViewCell *cell = (QTableViewCell *) [super getCellForTableView:tableView controller:controller];
    
    static NSString *CellTableIdentifier = @"SimpleButtonCell";
    
    SimpleButtonCell* cell = [tableView dequeueReusableCellWithIdentifier: CellTableIdentifier];
    
    if (cell == nil) {
        NSArray * nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleButtonCell" owner:self options:nil] ;
        cell = [nib objectAtIndex:0];

    }
    
    if (_title!= nil)
        cell.btn.titleLabel.text = [NSString stringWithFormat:@"%@", _title];
    
    
    [GlobalUtil set9PathImage:cell.btn imageName:@"activities_btn.png" top:2 right:10];
    [GlobalUtil setButtonColor:cell.btn color:ButtonColor];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}




//- (UITableViewCell *)getCellForTableView:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller {
//    QTableViewCell *cell = (QTableViewCell *) [super getCellForTableView:tableView controller:controller];
//    cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    cell.textLabel.text = _title;
//    cell.detailTextLabel.text = [_value description];
//    cell.imageView.image = _image;
//    cell.accessoryType = _accessoryType != UITableViewCellAccessoryNone ? _accessoryType : self.controllerAccessoryAction != nil ? UITableViewCellAccessoryDetailDisclosureButton : ( self.sections!= nil || self.controllerAction!=nil ? UITableViewCellAccessoryDisclosureIndicator : UITableViewCellAccessoryNone);
//    cell.selectionStyle = self.sections!= nil || self.controllerAction!=nil || self.onSelected!=nil ? UITableViewCellSelectionStyleBlue: UITableViewCellSelectionStyleNone;
//    return cell;
//}



@end
