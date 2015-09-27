.class public Lcom/meizu/common/widget/ScrollTextView;
.super Landroid/view/View;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;,
        Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;,
        Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;,
        Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;,
        Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;,
        Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;,
        Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;,
        Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mChangingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentItem:I

.field private mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

.field private mFadingHeight:F

.field private mFadingMatrix:Landroid/graphics/Matrix;

.field private mFadingPaint:Landroid/graphics/Paint;

.field private mFadingShader:Landroid/graphics/Shader;

.field private mFirstItem:I

.field private mNormalItemHeight:F

.field private mNormalTextColor:I

.field private mNormalTextSize:F

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

.field private mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

.field private mScrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollingOffset:I

.field private mSelectItemHeight:F

.field private mSelectTextColor:I

.field private mSelectTextSize:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTmpBitmap:Landroid/graphics/Bitmap;

.field private mTmpCanvas:Landroid/graphics/Canvas;

.field private mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

.field private mVisibleItems:I

.field private mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "ScrollTextView"

    sput-object v0, Lcom/meizu/common/widget/ScrollTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 197
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 67
    iput v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 73
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 74
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 93
    iput-boolean v3, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 181
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    .line 355
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$1;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    .line 656
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 198
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->initData(Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 67
    iput v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 73
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 74
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 93
    iput-boolean v3, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 181
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    .line 355
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$1;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    .line 656
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 189
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->initData(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ScrollTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/ScrollTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/ScrollTextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 55
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/ScrollTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getYScrollEnd()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getYScrollStart()I

    move-result v0

    return v0
.end method

.method private computeTextSizeAndColor(IF)V
    .locals 20
    .param p1, "index"    # I
    .param p2, "scale"    # F

    .prologue
    .line 783
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 784
    .local v7, "selectColor":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 785
    .local v5, "normalColor":I
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 786
    .local v8, "selectalpha":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 787
    .local v11, "slecetred":I
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 788
    .local v10, "slecetgreen":I
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 790
    .local v9, "slecetblue":I
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 791
    .local v12, "unselectalpha":I
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v15

    .line 792
    .local v15, "unslecetred":I
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v14

    .line 793
    .local v14, "unslecetgreen":I
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    .line 795
    .local v13, "unslecetblue":I
    sub-int v16, v8, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, p2

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v1, v12, v16

    .line 796
    .local v1, "a":I
    sub-int v16, v11, v15

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, p2

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v6, v15, v16

    .line 797
    .local v6, "r":I
    sub-int v16, v10, v14

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, p2

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v4, v14, v16

    .line 798
    .local v4, "g":I
    sub-int v16, v9, v13

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, p2

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v2, v13, v16

    .line 799
    .local v2, "b":I
    invoke-static {v1, v6, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 801
    .local v3, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v18, v18, p2

    add-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 803
    return-void
.end method

.method private configTextView(IF)F
    .locals 8
    .param p1, "index"    # I
    .param p2, "scale"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 762
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    int-to-float v0, v4

    .line 763
    .local v0, "dy":F
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 764
    .local v1, "gap":I
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    div-int/lit8 v3, v4, 0x2

    .line 766
    .local v3, "selectItemId":I
    const/4 v2, 0x0

    .line 767
    .local v2, "k":F
    if-ne p1, v3, :cond_1

    .line 768
    int-to-float v4, v1

    mul-float/2addr v4, p2

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    .line 769
    move v2, p2

    .line 777
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/meizu/common/widget/ScrollTextView;->computeTextSizeAndColor(IF)V

    .line 779
    return v0

    .line 770
    :cond_1
    add-int/lit8 v4, v3, 0x1

    if-ne p1, v4, :cond_2

    .line 771
    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 772
    sub-float v2, v6, p2

    goto :goto_0

    .line 773
    :cond_2
    add-int/lit8 v4, v3, 0x2

    if-ne p1, v4, :cond_0

    .line 774
    int-to-float v4, v1

    sub-float v5, v6, p2

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    goto :goto_0
.end method

.method private doScroll(I)V
    .locals 9
    .param p1, "delta"    # I

    .prologue
    const/4 v8, 0x0

    .line 901
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 903
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v3

    .line 904
    .local v3, "itemHeight":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    div-int v0, v6, v3

    .line 906
    .local v0, "count":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    sub-int v5, v6, v0

    .line 907
    .local v5, "pos":I
    iget-object v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v6}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    .line 909
    .local v2, "itemCount":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    rem-int v1, v6, v3

    .line 910
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_0

    .line 911
    const/4 v1, 0x0

    .line 914
    :cond_0
    iget-boolean v6, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v6, :cond_6

    if-lez v2, :cond_6

    .line 915
    if-lez v1, :cond_2

    .line 916
    add-int/lit8 v5, v5, -0x1

    .line 917
    add-int/lit8 v0, v0, 0x1

    .line 923
    :cond_1
    :goto_0
    if-gez v5, :cond_3

    .line 924
    add-int/2addr v5, v2

    goto :goto_0

    .line 918
    :cond_2
    if-gez v1, :cond_1

    .line 919
    add-int/lit8 v5, v5, 0x1

    .line 920
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 926
    :cond_3
    rem-int/2addr v5, v2

    .line 954
    :cond_4
    :goto_1
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 955
    .local v4, "offset":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-eq v5, v6, :cond_c

    .line 956
    invoke-virtual {p0, v5, v8}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 962
    :goto_2
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 963
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v6

    if-eqz v6, :cond_5

    .line 964
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 966
    :cond_5
    return-void

    .line 928
    .end local v4    # "offset":I
    :cond_6
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 929
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v7

    sub-int v0, v6, v7

    .line 930
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v5

    .line 931
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_1

    .line 932
    :cond_7
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v6

    if-le v5, v6, :cond_8

    .line 933
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v7

    sub-int v0, v6, v7

    .line 934
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v5

    .line 935
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_1

    .line 936
    :cond_8
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v6

    if-le v5, v6, :cond_9

    if-lez v1, :cond_9

    .line 937
    add-int/lit8 v5, v5, -0x1

    .line 938
    add-int/lit8 v0, v0, 0x1

    .line 939
    sget-object v6, Lcom/meizu/common/widget/ScrollTextView;->TAG:Ljava/lang/String;

    const-string v7, "pos > 0 && fixPos > 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 940
    :cond_9
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v6

    if-ge v5, v6, :cond_a

    if-gez v1, :cond_a

    .line 941
    add-int/lit8 v5, v5, 0x1

    .line 942
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 943
    :cond_a
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 944
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-gez v6, :cond_4

    .line 945
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto/16 :goto_1

    .line 947
    :cond_b
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 948
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-lez v6, :cond_4

    .line 949
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto/16 :goto_1

    .line 958
    .restart local v4    # "offset":I
    :cond_c
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto/16 :goto_2
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 697
    const/4 v9, 0x0

    .line 698
    .local v9, "yoff":F
    iget v10, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    iget v11, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    sub-int/2addr v10, v11

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v11

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    float-to-int v11, v11

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int v8, v10, v11

    .line 701
    .local v8, "top":I
    neg-int v10, v8

    iget v11, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int/2addr v10, v11

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v1, v10

    .line 702
    .local v1, "dy":F
    iget v10, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetX:I

    int-to-float v10, v10

    invoke-virtual {p1, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 704
    iget v10, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-lez v10, :cond_0

    iget v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 706
    .local v5, "scrolloff":I
    :goto_0
    int-to-float v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 708
    .local v4, "k":F
    move v9, v1

    .line 709
    const/4 v1, 0x0

    .line 710
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v10, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v10}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getCount()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 711
    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->configTextView(IF)F

    move-result v1

    .line 712
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 714
    add-float/2addr v9, v1

    .line 716
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/ScrollTextView;->getItemText(I)Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, "text":Ljava/lang/String;
    iget-object v10, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 719
    .local v7, "textLen":F
    iget-object v10, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 720
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v10, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    div-float/2addr v10, v13

    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v11, v11

    sub-float v0, v10, v11

    .line 723
    .local v0, "baseline":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v7

    div-float/2addr v10, v13

    iget-object v11, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10, v0, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 710
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 704
    .end local v0    # "baseline":F
    .end local v2    # "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "i":I
    .end local v4    # "k":F
    .end local v5    # "scrolloff":I
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "textLen":F
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v10

    iget v11, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int v5, v10, v11

    goto :goto_0

    .line 728
    .restart local v3    # "i":I
    .restart local v4    # "k":F
    .restart local v5    # "scrolloff":I
    :cond_1
    iget v10, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetX:I

    neg-int v10, v10

    int-to-float v10, v10

    neg-float v11, v9

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 729
    return-void
.end method

.method private drawVerticalFading(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 681
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 682
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 683
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    iget-object v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 685
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 686
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 687
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 688
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 689
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 690
    return-void
.end method

.method private getBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 660
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 666
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 668
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 663
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getItemHeight()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    float-to-int v0, v0

    return v0
.end method

.method private getItemText(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 737
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    add-int v1, p1, v2

    .line 739
    .local v1, "t":I
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "s":Ljava/lang/String;
    if-gez v1, :cond_3

    .line 741
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 742
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    .line 748
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 749
    const-string v0, ""

    .line 752
    :cond_1
    return-object v0

    .line 742
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 743
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 745
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_1
.end method

.method private getItemsRange()Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;
    .locals 8

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_0

    .line 986
    const/4 v3, 0x0

    .line 1009
    :goto_0
    return-object v3

    .line 989
    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 990
    .local v2, "first":I
    const/4 v0, 0x1

    .line 992
    .local v0, "count":I
    :goto_1
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 993
    add-int/lit8 v2, v2, -0x1

    .line 994
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 997
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-eqz v3, :cond_3

    .line 998
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-lez v3, :cond_2

    .line 999
    add-int/lit8 v2, v2, -0x1

    .line 1001
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1004
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 1005
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 1006
    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 1009
    .end local v1    # "emptyItems":I
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v3, v2, v0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->update(II)Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    move-result-object v3

    goto :goto_0
.end method

.method private getScrollEndItem()I
    .locals 5

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, "index":I
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    .line 868
    .local v2, "itemCount":I
    iget-boolean v3, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v3, :cond_0

    move v1, v0

    .line 877
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 871
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    if-gt v2, v3, :cond_1

    .line 872
    add-int/lit8 v0, v2, -0x1

    :goto_1
    move v1, v0

    .line 877
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 874
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v3, v2, -0x1

    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    goto :goto_1
.end method

.method private getScrollStartItem()I
    .locals 4

    .prologue
    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, "index":I
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    .line 884
    .local v2, "itemCount":I
    iget-boolean v3, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v3, :cond_0

    move v1, v0

    .line 893
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 887
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    if-gt v2, v3, :cond_1

    .line 888
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 893
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 890
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    div-int/lit8 v0, v3, 0x2

    goto :goto_1
.end method

.method private getYScrollEnd()I
    .locals 4

    .prologue
    .line 839
    const/4 v0, 0x0

    .line 841
    .local v0, "end":I
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v1, :cond_0

    .line 842
    const v0, 0x7fffffff

    .line 848
    :goto_0
    return v0

    .line 844
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private getYScrollStart()I
    .locals 4

    .prologue
    .line 852
    const/4 v0, 0x0

    .line 854
    .local v0, "start":I
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v1, :cond_0

    .line 855
    const v0, -0x7fffffff

    .line 861
    :goto_0
    return v0

    .line 857
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 206
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-direct {v0, p0, v2, v3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;-><init>(Lcom/meizu/common/widget/ScrollTextView;Landroid/content/Context;Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01d1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 223
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .line 225
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    .line 226
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    .line 229
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    .line 230
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 232
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    .line 236
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    .line 238
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rebuildItems()Z
    .locals 4

    .prologue
    .line 1017
    const/4 v1, 0x0

    .line 1018
    .local v1, "updated":Z
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemsRange()Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    .line 1020
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v3

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getLast()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1021
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1022
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    .line 1021
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1025
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    .line 1028
    :cond_1
    return v1
.end method

.method private setViewAdapter(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;)V
    .locals 0
    .param p1, "viewAdapter"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .line 440
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 441
    return-void
.end method


# virtual methods
.method public addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    return v0
.end method

.method public getViewAdapter()Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    return-object v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 467
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;

    .line 468
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;->onChanged(Lcom/meizu/common/widget/ScrollTextView;II)V

    goto :goto_0

    .line 470
    .end local v1    # "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 531
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 533
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;

    .line 534
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;
    invoke-interface {v1, p0, p1}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;->onItemClicked(Lcom/meizu/common/widget/ScrollTextView;I)V

    goto :goto_0

    .line 536
    .end local v1    # "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 5

    .prologue
    .line 503
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    if-eqz v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .line 507
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    invoke-interface {v1, p0}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;->onScrollingFinished(Lcom/meizu/common/widget/ScrollTextView;)V

    goto :goto_0

    .line 509
    .end local v1    # "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    :cond_1
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 494
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .line 495
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    invoke-interface {v1, p0}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;->onScrollingStarted(Lcom/meizu/common/widget/ScrollTextView;)V

    goto :goto_0

    .line 497
    .end local v1    # "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 643
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 644
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 646
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 647
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->rebuildItems()Z

    .line 648
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView;->drawItems(Landroid/graphics/Canvas;)V

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView;->drawVerticalFading(Landroid/graphics/Canvas;)V

    .line 653
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 654
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 629
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 630
    .local v0, "height":I
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ScrollTextView;->setMeasuredDimension(II)V

    .line 631
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 807
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getViewAdapter()Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v2

    .line 811
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 835
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v2, p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 813
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 819
    :pswitch_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    .line 820
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 821
    .local v0, "distance":I
    if-gez v0, :cond_3

    .line 822
    int-to-float v2, v0

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    div-float/2addr v3, v4

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 826
    :goto_2
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 828
    .local v1, "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/ScrollTextView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/ScrollTextView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 824
    .end local v1    # "items":I
    :cond_3
    int-to-float v2, v0

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    div-float/2addr v3, v4

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_2

    .line 811
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 673
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 675
    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 678
    :cond_0
    return-void
.end method

.method public refreshCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 248
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 249
    return-void
.end method

.method public refreshCountAndCurrent(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "current"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 267
    return-void
.end method

.method public refreshCurrent(I)V
    .locals 3
    .param p1, "current"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidStart()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidEnd()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 258
    return-void
.end method

.method refreshData(IIII)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "currentItem"    # I
    .param p3, "validStart"    # I
    .param p4, "validEnd"    # I

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->stopScrolling()V

    .line 279
    if-gez p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1, p1, p3, p4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->update(III)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setViewAdapter(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;)V

    .line 284
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 286
    .local v0, "oldCurrentItem":I
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-eq p2, v1, :cond_2

    .line 287
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 289
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-gt v1, p4, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-lt v1, p1, :cond_2

    .line 290
    :cond_1
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 294
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-eq v0, v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-interface {v1, p0, v0, v2}, Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    .line 301
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto :goto_0
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int v0, v1, v2

    .line 976
    .local v0, "distance":I
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v1, v0, p2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroll(II)V

    .line 977
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 552
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    .line 557
    .local v0, "itemCount":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 558
    :cond_2
    iget-boolean v4, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v4, :cond_0

    .line 559
    :goto_1
    if-gez p1, :cond_3

    .line 560
    add-int/2addr p1, v0

    goto :goto_1

    .line 562
    :cond_3
    rem-int/2addr p1, v0

    .line 568
    :cond_4
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-eq p1, v4, :cond_0

    .line 569
    if-eqz p2, :cond_7

    .line 570
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    sub-int v1, p1, v4

    .line 571
    .local v1, "itemsToScroll":I
    iget-boolean v4, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v4, :cond_5

    .line 572
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 574
    .local v3, "scroll":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 575
    if-gez v1, :cond_6

    move v1, v3

    .line 578
    .end local v3    # "scroll":I
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/meizu/common/widget/ScrollTextView;->scroll(II)V

    goto :goto_0

    .line 575
    .restart local v3    # "scroll":I
    :cond_6
    neg-int v1, v3

    goto :goto_2

    .line 580
    .end local v1    # "itemsToScroll":I
    .end local v3    # "scroll":I
    :cond_7
    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 582
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 583
    .local v2, "old":I
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 585
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-virtual {p0, v2, v4}, Lcom/meizu/common/widget/ScrollTextView;->notifyChangingListeners(II)V

    .line 587
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto :goto_0
.end method

.method public setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 4
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .param p2, "lineOffset"    # F
    .param p3, "currentItem"    # I
    .param p4, "count"    # I
    .param p5, "oneScreenCount"    # I
    .param p6, "validStart"    # I
    .param p7, "validEnd"    # I
    .param p8, "cycleEnabled"    # Z

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIDataAdapter(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;)V

    .line 332
    iput p5, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 333
    iput-boolean p8, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 335
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetY:I

    .line 345
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    if-lt p4, v2, :cond_0

    add-int/lit8 v2, p7, 0x1

    if-lt v2, p4, :cond_0

    if-lez p6, :cond_1

    .line 347
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 351
    :cond_1
    invoke-virtual {p0, p4, p3, p6, p7}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 352
    return-void

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 341
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 342
    .local v0, "density":F
    mul-float v2, p2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetY:I

    goto :goto_0
.end method

.method public setIDataAdapter(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    .line 1135
    return-void
.end method

.method public setItemHeight(FF)V
    .locals 2
    .param p1, "selectHeight"    # F
    .param p2, "normalHeight"    # F

    .prologue
    .line 1110
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1111
    return-void
.end method

.method public setSelectItemHeight(F)V
    .locals 3
    .param p1, "selectHeight"    # F

    .prologue
    .line 1118
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1119
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I

    .prologue
    .line 1063
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    if-ne v0, p2, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1066
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 1067
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 1069
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextPreference(FFFF)V
    .locals 1
    .param p1, "selectedSize"    # F
    .param p2, "normalSize"    # F
    .param p3, "selectHeight"    # F
    .param p4, "normalHeight"    # F

    .prologue
    .line 1080
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1086
    :cond_0
    iput p3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 1087
    iput p4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 1088
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    .line 1089
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    .line 1091
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextSize(FF)V
    .locals 2
    .param p1, "selectedSize"    # F
    .param p2, "normalSize"    # F

    .prologue
    .line 1101
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1102
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->stopScrolling()V

    .line 1051
    :cond_0
    return-void
.end method
