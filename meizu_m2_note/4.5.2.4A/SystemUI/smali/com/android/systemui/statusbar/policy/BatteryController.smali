.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# instance fields
.field mAnimating:Z

.field final mAnimationCallback:Ljava/lang/Runnable;

.field mAnimationLevel:I

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field mChoreographer:Landroid/view/Choreographer;

.field private mContext:Landroid/content/Context;

.field mCurrentLevel:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationLevel:I

    .line 46
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCurrentLevel:I

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimating:Z

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 198
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationCallback:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChoreographer:Landroid/view/Choreographer;

    .line 79
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method doAnimation()V
    .locals 6

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 177
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationLevel:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationLevel:I

    .line 179
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationLevel:I

    if-le v0, v2, :cond_0

    .line 180
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationLevel:I

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationLevel:I

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 188
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationLevel:I

    const/16 v2, 0x63

    if-lt v0, v2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mView:Landroid/widget/ImageView;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 190
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCurrentLevel:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationLevel:I

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x5dc

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 96
    const-string v10, "level"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 97
    .local v7, "level":I
    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v8, 0x1

    .line 102
    .local v8, "plugged":Z
    :goto_0
    sget-object v10, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 103
    if-eqz v8, :cond_2

    const v6, 0x7f02037b

    .line 109
    .local v6, "icon":I
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 110
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_8

    .line 111
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 112
    .local v9, "v":Landroid/widget/ImageView;
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0098

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    const v10, 0x7f020380

    if-ne v6, v10, :cond_5

    .line 123
    mul-int/lit8 v10, v7, 0x64

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 124
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChoreographer:Landroid/view/Choreographer;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 125
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimating:Z

    .line 126
    iput v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCurrentLevel:I

    .line 127
    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCurrentLevel:I

    iput v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationLevel:I

    .line 110
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 97
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v6    # "icon":I
    .end local v8    # "plugged":Z
    .end local v9    # "v":Landroid/widget/ImageView;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 103
    .restart local v8    # "plugged":Z
    :cond_2
    const v6, 0x7f020380

    goto :goto_1

    .line 106
    :cond_3
    if-eqz v8, :cond_4

    const v6, 0x7f02037e

    .restart local v6    # "icon":I
    :goto_4
    goto :goto_1

    .end local v6    # "icon":I
    :cond_4
    const v6, 0x7f020380

    goto :goto_4

    .line 132
    .restart local v1    # "N":I
    .restart local v4    # "i":I
    .restart local v6    # "icon":I
    .restart local v9    # "v":Landroid/widget/ImageView;
    :cond_5
    const v10, 0x7f02037e

    if-ne v6, v10, :cond_6

    .line 133
    const/16 v10, 0x63

    if-le v7, v10, :cond_0

    .line 134
    const v10, 0x7f020374

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 140
    :cond_6
    const v10, 0x7f02037b

    if-ne v6, v10, :cond_0

    .line 141
    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mView:Landroid/widget/ImageView;

    .line 142
    iput v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCurrentLevel:I

    .line 144
    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCurrentLevel:I

    const/16 v11, 0x63

    if-le v10, v11, :cond_7

    .line 145
    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 146
    const v10, 0x7f020374

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChoreographer:Landroid/view/Choreographer;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 148
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimating:Z

    goto :goto_3

    .line 149
    :cond_7
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimating:Z

    if-nez v10, :cond_0

    .line 150
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimating:Z

    .line 151
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChoreographer:Landroid/view/Choreographer;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 152
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChoreographer:Landroid/view/Choreographer;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_3

    .line 157
    .end local v9    # "v":Landroid/widget/ImageView;
    :cond_8
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_9

    .line 159
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 164
    .local v9, "v":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v11, 0x7f0b010c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 169
    .end local v9    # "v":Landroid/widget/TextView;
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 170
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    invoke-interface {v3, v7, v8}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V

    goto :goto_6

    .line 173
    .end local v1    # "N":I
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "icon":I
    .end local v7    # "level":I
    .end local v8    # "plugged":Z
    :cond_a
    return-void
.end method
