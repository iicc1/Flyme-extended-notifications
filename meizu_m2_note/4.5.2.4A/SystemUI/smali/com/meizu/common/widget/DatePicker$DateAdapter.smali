.class Lcom/meizu/common/widget/DatePicker$DateAdapter;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateAdapter"
.end annotation


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 133
    iput-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    .line 134
    iput p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    .line 135
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mStartYear:I
    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->isLunar:Z
    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getLunarMonths(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/meizu/common/widget/DatePicker;->access$200(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->isLunar:Z
    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromOld"    # I
    .param p3, "toNew"    # I

    .prologue
    const/4 v4, 0x1

    .line 170
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getMonthDays()I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    .line 171
    .local v0, "maxdays":I
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getYearMonths()I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    .line 173
    .local v1, "maxmonths":I
    iget v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mStartYear:I
    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    add-int/2addr v3, p3

    # setter for: Lcom/meizu/common/widget/DatePicker;->mYear:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$702(Lcom/meizu/common/widget/DatePicker;I)I

    .line 176
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getYearMonths()I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getYearMonths()I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    .line 179
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 180
    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonth:I
    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 181
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # setter for: Lcom/meizu/common/widget/DatePicker;->mDay:I
    invoke-static {v2, v0}, Lcom/meizu/common/widget/DatePicker;->access$1002(Lcom/meizu/common/widget/DatePicker;I)I

    .line 182
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonth:I
    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getMonthDays()I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getMonthDays()I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    .line 189
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 190
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # setter for: Lcom/meizu/common/widget/DatePicker;->mDay:I
    invoke-static {v2, v0}, Lcom/meizu/common/widget/DatePicker;->access$1002(Lcom/meizu/common/widget/DatePicker;I)I

    .line 192
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDay:I
    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$1000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 218
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mYear:I
    invoke-static {v4}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonth:I
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDay:I
    invoke-static {v6}, Lcom/meizu/common/widget/DatePicker;->access$1000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V

    goto/16 :goto_0

    .line 199
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # setter for: Lcom/meizu/common/widget/DatePicker;->mMonth:I
    invoke-static {v2, p3}, Lcom/meizu/common/widget/DatePicker;->access$902(Lcom/meizu/common/widget/DatePicker;I)I

    .line 200
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getMonthDays()I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # invokes: Lcom/meizu/common/widget/DatePicker;->getMonthDays()I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    .line 203
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 204
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # setter for: Lcom/meizu/common/widget/DatePicker;->mDay:I
    invoke-static {v2, v0}, Lcom/meizu/common/widget/DatePicker;->access$1002(Lcom/meizu/common/widget/DatePicker;I)I

    .line 206
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDay:I
    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$1000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    goto :goto_1

    .line 212
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    add-int/lit8 v3, p3, 0x1

    # setter for: Lcom/meizu/common/widget/DatePicker;->mDay:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$1002(Lcom/meizu/common/widget/DatePicker;I)I

    goto :goto_1

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
