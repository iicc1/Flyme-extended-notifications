.class public Lcom/android/systemui/mzrecent/MzHandleView;
.super Landroid/widget/ImageView;
.source "MzHandleView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field colorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field mIsSetColorFilter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "HandleView"

    sput-object v0, Lcom/android/systemui/mzrecent/MzHandleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/MzHandleView;->mIsSetColorFilter:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/mzrecent/MzHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/MzHandleView;->mIsSetColorFilter:Z

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzHandleView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/mzrecent/MzHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 58
    .local v0, "srcColor":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/MzHandleView;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 61
    return-void
.end method

.method private setColorFilter(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzHandleView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/MzHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 68
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 70
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/MzHandleView;->setColorFilter(Z)V

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/MzHandleView;->setColorFilter(Z)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/MzHandleView;->setColorFilter(Z)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
