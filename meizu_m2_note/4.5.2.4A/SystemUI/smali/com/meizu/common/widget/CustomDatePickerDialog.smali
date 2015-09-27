.class public Lcom/meizu/common/widget/CustomDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;,
        Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/meizu/common/widget/DatePicker;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->clearFocus()V

    .line 272
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/meizu/common/widget/DatePicker;III)V

    .line 275
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 267
    return-void
.end method

.method public onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V
    .locals 6
    .param p1, "view"    # Lcom/meizu/common/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 279
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 316
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, "year":I
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 318
    .local v2, "month":I
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 319
    .local v3, "day":I
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 320
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 306
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 307
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string v1, "month"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    const-string v1, "day"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    return-object v0
.end method
