.class Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeAdapter"
.end annotation


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 136
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    .line 137
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    .line 138
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 165
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    if-nez p1, :cond_2

    const/16 p1, 0xc

    .line 171
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_3
    if-nez p1, :cond_3

    .line 179
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mAmText:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mPmText:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getLunarDays(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/meizu/common/widget/CustomTimePicker;->access$700(Lcom/meizu/common/widget/CustomTimePicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromOld"    # I
    .param p3, "toNew"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I
    invoke-static {v0, p3}, Lcom/meizu/common/widget/CustomTimePicker;->access$002(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I
    invoke-static {v0, p3}, Lcom/meizu/common/widget/CustomTimePicker;->access$102(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 151
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_1
    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$202(Lcom/meizu/common/widget/CustomTimePicker;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    add-int/lit8 v1, p3, 0x1

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
