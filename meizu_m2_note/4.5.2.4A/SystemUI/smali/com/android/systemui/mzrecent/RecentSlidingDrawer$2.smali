.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$2;
.super Ljava/lang/Object;
.source "RecentSlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$2;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 489
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$2;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v6, v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v0, v6

    .line 490
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 491
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$2;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v6, v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v4, v6, v1

    .line 492
    .local v4, "lr":Landroid/widget/LinearLayout;
    if-nez v4, :cond_0

    .line 490
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$2;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v6, v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    aget-object v5, v6, v1

    .line 495
    .local v5, "tv":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$2;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v6, v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    aget-object v2, v6, v1

    .line 496
    .local v2, "ig":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$2;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v6, v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    aget-object v3, v6, v1

    .line 498
    .local v3, "lock":Landroid/widget/ImageView;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 501
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    const/4 v4, 0x0

    .line 505
    const/4 v2, 0x0

    .line 506
    const/4 v5, 0x0

    .line 507
    goto :goto_1

    .line 517
    .end local v2    # "ig":Landroid/widget/ImageView;
    .end local v3    # "lock":Landroid/widget/ImageView;
    .end local v4    # "lr":Landroid/widget/LinearLayout;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
