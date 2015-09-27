.class Lcom/meizu/common/widget/TimePicker$TimeAdapter;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeAdapter"
.end annotation


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/TimePicker;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    .line 94
    iput p2, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    .line 95
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 120
    iget v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    if-nez p1, :cond_2

    const/16 p1, 0xc

    .line 126
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_2
    if-nez p1, :cond_3

    .line 134
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mAmText:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$400(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mPmText:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$500(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromOld"    # I
    .param p3, "toNew"    # I

    .prologue
    .line 98
    iget v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    # setter for: Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0, p3}, Lcom/meizu/common/widget/TimePicker;->access$002(Lcom/meizu/common/widget/TimePicker;I)I

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;
    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    # getter for: Lcom/meizu/common/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;
    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/meizu/common/widget/TimePicker;II)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    # setter for: Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I
    invoke-static {v0, p3}, Lcom/meizu/common/widget/TimePicker;->access$102(Lcom/meizu/common/widget/TimePicker;I)I

    goto :goto_1

    .line 106
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_2
    # setter for: Lcom/meizu/common/widget/TimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/meizu/common/widget/TimePicker;->access$202(Lcom/meizu/common/widget/TimePicker;Z)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
