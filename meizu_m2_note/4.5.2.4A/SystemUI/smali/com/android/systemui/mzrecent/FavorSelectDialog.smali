.class public Lcom/android/systemui/mzrecent/FavorSelectDialog;
.super Landroid/app/Dialog;
.source "FavorSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;,
        Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;,
        Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;,
        Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    }
.end annotation


# static fields
.field private static FAVOR_ITEM_HEIGHT:I

.field private static FAVOR_ITEM_ICON_SIZE:I

.field private static FAVOR_ITEM_WIDTH:I

.field private static LOAD_STEP_COUNT:I

.field protected static mCount:I


# instance fields
.field private mAdapter:Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;

.field private mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            "Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefault:Landroid/graphics/drawable/Drawable;

.field private mDefaultSystemClass:[Ljava/lang/String;

.field private mDefaultSystemPkg:[Ljava/lang/String;

.field private mFilterArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstVisiblePosition:I

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mIPm:Landroid/content/pm/IPackageManager;

.field private mInstance:Lcom/android/systemui/mzrecent/FavorSelectDialog;

.field private mLoader:Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field private mResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mRotation:I

.field private mSelectTitle:Landroid/widget/TextView;

.field private mSourceCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mCount:I

    .line 87
    const/16 v0, 0xf

    sput v0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->LOAD_STEP_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRotation:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFilterArrayList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mCachedInfos:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFirstVisiblePosition:I

    .line 90
    new-instance v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/mzrecent/FavorSelectDialog$1;-><init>(Lcom/android/systemui/mzrecent/FavorSelectDialog;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mHandler:Landroid/os/Handler;

    .line 223
    iput-object p1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAdapter:Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;
    .param p1, "x1"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;
    .param p2, "x2"    # Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->createItemView(Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mCachedInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/mzrecent/FavorSelectDialog;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->createShadowDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->LOAD_STEP_COUNT:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createItemView(Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;)Landroid/widget/LinearLayout;
    .locals 12
    .param p1, "dialog"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;
    .param p2, "appInfo"    # Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x1

    .line 431
    if-eqz p2, :cond_0

    .line 432
    const/4 v6, 0x0

    .line 433
    .local v6, "tmpIcon":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 434
    .local v7, "tmpLabel":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 435
    invoke-virtual {p2}, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    .line 436
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 438
    .local v4, "item":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    sget v8, Lcom/android/systemui/mzrecent/FavorSelectDialog;->FAVOR_ITEM_WIDTH:I

    sget v9, Lcom/android/systemui/mzrecent/FavorSelectDialog;->FAVOR_ITEM_HEIGHT:I

    invoke-direct {v5, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 440
    .local v5, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 442
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 443
    iget-object v8, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020021

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 445
    new-instance v0, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, "appIcon":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v8, Lcom/android/systemui/mzrecent/FavorSelectDialog;->FAVOR_ITEM_ICON_SIZE:I

    sget v9, Lcom/android/systemui/mzrecent/FavorSelectDialog;->FAVOR_ITEM_ICON_SIZE:I

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 449
    .local v3, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v1, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 451
    .local v1, "appLabel":Landroid/widget/TextView;
    const/high16 v8, -0x1000000

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    const/16 v8, 0xb8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 453
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 454
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 458
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 459
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    new-instance v2, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;-><init>(Lcom/android/systemui/mzrecent/FavorSelectDialog;)V

    .line 464
    .local v2, "holder":Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;
    iput-object v0, v2, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 465
    iput-object v1, v2, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;->mLabelView:Landroid/widget/TextView;

    .line 466
    iget-object v8, p2, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v8, v2, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 467
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 471
    .end local v0    # "appIcon":Landroid/widget/ImageView;
    .end local v1    # "appLabel":Landroid/widget/TextView;
    .end local v2    # "holder":Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;
    .end local v3    # "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "item":Landroid/widget/LinearLayout;
    .end local v5    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v6    # "tmpIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "tmpLabel":Ljava/lang/CharSequence;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private createShadowDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 21
    .param p1, "originalDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 488
    .local v15, "resources":Landroid/content/res/Resources;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 489
    .local v11, "mapBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 490
    .local v12, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v11, :cond_0

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    add-int/lit8 v10, v18, 0x6

    .line 493
    .local v10, "createWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    add-int/lit8 v9, v18, 0x6

    .line 495
    .local v9, "createHeight":I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v10, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 497
    .local v8, "createBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 498
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 499
    .local v3, "bitmapPaint":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 500
    .local v14, "paint":Landroid/graphics/Paint;
    const v18, 0xa0b000c

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 502
    .local v7, "color":I
    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 505
    .local v13, "offsetXY":[I
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v18, 0x3f800000    # 1.0f

    sget-object v19, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 507
    .local v5, "blurFilterStroke":Landroid/graphics/BlurMaskFilter;
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 508
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 509
    .local v17, "strokeBitmap":Landroid/graphics/Bitmap;
    const/16 v18, 0x56

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 510
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    sub-int v18, v10, v18

    shr-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sub-int v19, v9, v19

    shr-int/lit8 v19, v19, 0x1

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 515
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    const/high16 v18, 0x40400000    # 3.0f

    sget-object v19, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 517
    .local v4, "blurFilterOutter":Landroid/graphics/BlurMaskFilter;
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 518
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 519
    .local v16, "shadowBitmap":Landroid/graphics/Bitmap;
    const/16 v18, 0x34

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 520
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    sub-int v18, v10, v18

    shr-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sub-int v19, v9, v19

    shr-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 524
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    sub-int v18, v10, v18

    shr-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sub-int v19, v9, v19

    shr-int/lit8 v19, v19, 0x1

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 528
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .end local v12    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v12, v15, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 529
    .restart local v12    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1, v10, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 531
    .end local v3    # "bitmapPaint":Landroid/graphics/Paint;
    .end local v4    # "blurFilterOutter":Landroid/graphics/BlurMaskFilter;
    .end local v5    # "blurFilterStroke":Landroid/graphics/BlurMaskFilter;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "color":I
    .end local v8    # "createBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "createHeight":I
    .end local v10    # "createWidth":I
    .end local v13    # "offsetXY":[I
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v16    # "shadowBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "strokeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v12, :cond_1

    .end local p1    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .restart local p1    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 p1, v12

    goto :goto_0
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 536
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 537
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 549
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 539
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 545
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 546
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 548
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 539
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method private initFilterApp()V
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFilterArrayList:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.LatitudeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFilterArrayList:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.PlacesActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFilterArrayList:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.driveabout.app.DestinationActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFilterArrayList:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.quicksearchbox"

    const-string v3, "com.android.quicksearchbox.SearchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFilterArrayList:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.speechrecorder"

    const-string v3, "com.android.speechrecorder.SpeechRecorderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFilterArrayList:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.launcher"

    const-string v3, "com.android.launcher2.Launcher"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    return-void
.end method

.method private isHidedInGuestMode(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method private sortResolveInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 339
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v3, "tmp":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemPkg:[Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemPkg:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemClass:[Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemClass:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemPkg:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 347
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 348
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemPkg:[Ljava/lang/String;

    aget-object v5, v4, v0

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemClass:[Ljava/lang/String;

    aget-object v5, v4, v0

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFilterArrayList:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemPkg:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemClass:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 355
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 346
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 362
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 363
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 364
    iget-object v5, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFilterArrayList:Ljava/util/ArrayList;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 367
    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSourceCopy:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 371
    .end local v2    # "k":I
    :cond_5
    return-object v3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;

    .line 383
    .local v0, "holder":Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;
    iget-object v1, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 384
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->addFavorApp(Landroid/content/pm/ResolveInfo;)V

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v7, 0x20000

    const/16 v3, 0x400

    const/16 v6, 0x34

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 232
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 237
    .local v1, "window":Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 238
    const/16 v2, 0x7e0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 239
    invoke-virtual {v1, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 241
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 242
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 243
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 244
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 245
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 246
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 247
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 248
    const/4 v2, 0x2

    invoke-virtual {v1, v5, v2}, Landroid/view/Window;->setFlags(II)V

    .line 249
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->setContentView(I)V

    .line 250
    const v2, 0x7f0e0036

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSelectTitle:Landroid/widget/TextView;

    .line 251
    const v2, 0x7f0e0037

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    .line 252
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 253
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemPkg:[Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefaultSystemClass:[Ljava/lang/String;

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->initFilterApp()V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v6, v5, v6, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 259
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 260
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    const/16 v3, 0x41b

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setMinimumHeight(I)V

    .line 261
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 262
    iput-object p0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mInstance:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .line 263
    new-instance v2, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mInstance:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;-><init>(Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog;)V

    iput-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAdapter:Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;

    .line 264
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAdapter:Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 267
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefault:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/systemui/mzrecent/FavorSelectDialog;->FAVOR_ITEM_WIDTH:I

    .line 271
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/systemui/mzrecent/FavorSelectDialog;->FAVOR_ITEM_HEIGHT:I

    .line 273
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/systemui/mzrecent/FavorSelectDialog;->FAVOR_ITEM_ICON_SIZE:I

    .line 276
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mIPm:Landroid/content/pm/IPackageManager;

    .line 277
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;

    .line 557
    .local v0, "holder":Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;
    iget-object v1, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 558
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->addFavorApp(Landroid/content/pm/ResolveInfo;)V

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->dismiss()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 484
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 476
    if-nez p2, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFirstVisiblePosition:I

    .line 479
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 281
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 282
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    iget v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFirstVisiblePosition:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getNeedInitFlag()I

    move-result v1

    if-lez v1, :cond_4

    .line 288
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getPkgInfosInstalled()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mResolveInfoList:Ljava/util/List;

    .line 290
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mResolveInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v6, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    .local v6, "mainIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mResolveInfoList:Ljava/util/List;

    .line 299
    .end local v6    # "mainIntent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mResolveInfoList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->sortResolveInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mResolveInfoList:Ljava/util/List;

    .line 300
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 302
    .local v4, "temp":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isAddedToFavors(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->isHidedInGuestMode(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    new-instance v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;

    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mDefault:Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;-><init>(Lcom/android/systemui/mzrecent/FavorSelectDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/ResolveInfo;I)V

    .line 309
    .local v0, "appInfo":Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v0    # "appInfo":Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 312
    .end local v4    # "temp":Landroid/content/pm/ResolveInfo;
    :cond_3
    new-instance v1, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;

    invoke-direct {v1, p0, p0}, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;-><init>(Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog;)V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mLoader:Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;

    .line 313
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mLoader:Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 314
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getNeedInitFlag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 315
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1, v7}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setNeedInitFlag(I)V

    .line 320
    .end local v5    # "i":I
    :cond_4
    :goto_1
    return-void

    .line 317
    .restart local v5    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetInitFlag()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mFirstVisiblePosition:I

    .line 378
    return-void
.end method

.method public refreshForThemeChanged()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mCachedInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAdapter:Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAdapter:Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;->notifyDataSetChanged()V

    .line 575
    :cond_1
    return-void
.end method

.method protected setRecentDrawer(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 0
    .param p1, "drawer"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .line 396
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mRotation:I

    .line 228
    return-void
.end method

.method public updateSelectTitle()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSelectTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mSelectTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :cond_0
    return-void
.end method
