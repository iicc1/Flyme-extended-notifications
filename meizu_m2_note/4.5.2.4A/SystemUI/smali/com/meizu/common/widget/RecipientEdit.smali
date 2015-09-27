.class public Lcom/meizu/common/widget/RecipientEdit;
.super Landroid/widget/FrameLayout;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/RecipientEdit$OnRecipientSimpleChangedListener;,
        Lcom/meizu/common/widget/RecipientEdit$Recipient;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientDragWatcher;,
        Lcom/meizu/common/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;,
        Lcom/meizu/common/widget/RecipientEdit$OnDropDownListener;,
        Lcom/meizu/common/widget/RecipientEdit$OnRecipientChangedListener;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;,
        Lcom/meizu/common/widget/RecipientEdit$DirectoryObserver;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientHandler;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;,
        Lcom/meizu/common/widget/RecipientEdit$DirectoryListQuery;,
        Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;,
        Lcom/meizu/common/widget/RecipientEdit$PopupWindowHelper;,
        Lcom/meizu/common/widget/RecipientEdit$ItemView;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientDragShadowBuilder;,
        Lcom/meizu/common/widget/RecipientEdit$DragInfo;
    }
.end annotation


# static fields
.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sContentWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

.field private static sRecipientWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;


# instance fields
.field private isFirstHasFocus:Z

.field private mAddContactsBtn:Landroid/widget/ImageButton;

.field private mAutoGlobalSearch:Z

.field private mContentHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCountView:Landroid/widget/TextView;

.field private mDirectoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mDirectoryLock:Ljava/lang/Object;

.field private mDirectoryObserver:Landroid/database/ContentObserver;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mDragInfo:Lcom/meizu/common/widget/RecipientEdit$DragInfo;

.field private mDragWatcher:Lcom/meizu/common/widget/RecipientEdit$RecipientDragWatcher;

.field private mEditMaxWidth:I

.field private mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

.field private mEnabledDrag:Z

.field private mFirstDragPos:I

.field private mHintView2:Landroid/widget/TextView;

.field private mInDrag:Z

.field private mInputType:I

.field private mIsFirstLayout:Z

.field private mIsSaveHistory:Z

.field private mLastInputMethod:Ljava/lang/String;

.field private mMaxHeight:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mOnRecipientChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientChangedListener;

.field private mOnRecipientSimpleChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientSimpleChangedListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOnSingleAddWhenGroupListener:Lcom/meizu/common/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;

.field private mOpenGlobalAddressBook:Z

.field private mRAdapterExListener:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;

.field private mRecipientDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientHandler:Lcom/meizu/common/widget/RecipientEdit$RecipientHandler;

.field private mRecipientLayout:Landroid/widget/AbsoluteLayout;

.field private mRecipientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientScrollView:Landroid/widget/ScrollView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSingleRecipientFlag:I

.field private mStartDrag:Z

.field private mViewSelected:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1845
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/RecipientEdit;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 3510
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/RecipientEdit;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/RecipientEdit;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mInputType:I

    return v0
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$DragInfo;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mDragInfo:Lcom/meizu/common/widget/RecipientEdit$DragInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/RecipientEdit;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mDirectoryLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/common/widget/RecipientEdit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mAutoGlobalSearch:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mRAdapterExListener:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/RecipientEdit;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->loadDirectories()V

    return-void
.end method

.method static synthetic access$3000(Lcom/meizu/common/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/meizu/common/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/common/widget/RecipientEdit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/meizu/common/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mDirectoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/meizu/common/widget/RecipientEdit;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/meizu/common/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/meizu/common/widget/RecipientEdit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mIsSaveHistory:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/meizu/common/widget/RecipientEdit;)Landroid/widget/AbsoluteLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addItemView(Ljava/lang/CharSequence;)I
    .locals 8
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1788
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v4, 0x7f040032

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/meizu/common/widget/RecipientEdit;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/RecipientEdit$ItemView;

    .line 1789
    .local v1, "item":Lcom/meizu/common/widget/RecipientEdit$ItemView;
    invoke-virtual {v1}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v2

    .line 1790
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    invoke-virtual {v1, v7}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setClickable(Z)V

    .line 1793
    invoke-virtual {v1, p0}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1794
    invoke-virtual {v1, v7}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setLongClickable(Z)V

    .line 1795
    invoke-virtual {v1, p0}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1796
    invoke-virtual {v1, v6}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setFocusable(Z)V

    .line 1797
    invoke-virtual {v1, v6}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setFocusableInTouchMode(Z)V

    .line 1798
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1799
    .local v0, "index":I
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3, v1, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;I)V

    .line 1800
    return v0
.end method

.method private addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "contactName"    # Ljava/lang/String;

    .prologue
    .line 1682
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private addRecipientInternal(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "contactName"    # Ljava/lang/String;
    .param p3, "dragPos"    # I

    .prologue
    .line 1686
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    .local v1, "dstNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1689
    const/4 v9, 0x0

    .line 1745
    :goto_0
    return v9

    .line 1692
    :cond_0
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1693
    const/4 v9, 0x0

    goto :goto_0

    .line 1696
    :cond_1
    iget v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    const/4 v2, 0x1

    .line 1697
    .local v2, "hasEmail":Z
    :goto_1
    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/meizu/common/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1698
    iget v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mSingleRecipientFlag:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mSingleRecipientFlag:I

    .line 1701
    :cond_2
    move-object v0, p2

    .line 1702
    .local v0, "displayName":Ljava/lang/String;
    move-object v7, p2

    .line 1703
    .local v7, "tmpName":Ljava/lang/String;
    const-string v6, ""

    .line 1705
    .local v6, "suffix":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1706
    const-string v9, ";"

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1707
    .local v5, "strArray":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 1708
    const/4 v9, 0x0

    aget-object v7, v5, v9

    .line 1709
    const/4 v9, 0x1

    aget-object v6, v5, v9

    .line 1713
    .end local v5    # "strArray":[Ljava/lang/String;
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1714
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1716
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1717
    move-object v0, v7

    .line 1723
    :cond_4
    :goto_2
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v8

    .line 1724
    .local v8, "valid":Z
    move v3, p3

    .line 1725
    .local v3, "index":I
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9, v3}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1726
    .local v4, "item":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 1727
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1728
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1738
    :goto_3
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v9, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1740
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1741
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1696
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v2    # "hasEmail":Z
    .end local v3    # "index":I
    .end local v4    # "item":Landroid/view/View;
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "tmpName":Ljava/lang/String;
    .end local v8    # "valid":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1719
    .restart local v0    # "displayName":Ljava/lang/String;
    .restart local v2    # "hasEmail":Z
    .restart local v6    # "suffix":Ljava/lang/String;
    .restart local v7    # "tmpName":Ljava/lang/String;
    :cond_6
    move-object v0, v1

    goto :goto_2

    .line 1730
    .restart local v3    # "index":I
    .restart local v4    # "item":Landroid/view/View;
    .restart local v8    # "valid":Z
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1731
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/meizu/common/widget/RecipientEdit;->addItemView(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_3

    .line 1733
    :cond_8
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/RecipientEdit;->addItemView(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_3

    .line 1743
    :cond_9
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private changeViewPos(Lcom/meizu/common/widget/RecipientEdit$DragInfo;II)I
    .locals 19
    .param p1, "dragInfo"    # Lcom/meizu/common/widget/RecipientEdit$DragInfo;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getLeft()I

    move-result v17

    sub-int p2, p2, v17

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getTop()I

    move-result v17

    sub-int p3, p3, v17

    .line 716
    move-object/from16 v0, p1

    iget v0, v0, Lcom/meizu/common/widget/RecipientEdit$DragInfo;->mOffSetX:I

    move/from16 v17, v0

    sub-int v10, p2, v17

    .line 717
    .local v10, "left":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/meizu/common/widget/RecipientEdit$DragInfo;->mOffSetY:I

    move/from16 v17, v0

    sub-int v15, p3, v17

    .line 718
    .local v15, "top":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/common/widget/RecipientEdit$ItemView;

    move-object/from16 v16, v0

    .line 719
    .local v16, "v":Landroid/view/View;
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v17

    add-int v17, v17, v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v18, v18, v15

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v10, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 720
    .local v14, "shadowFrame":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    .line 721
    .local v12, "shadowCenterX":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    .line 723
    .local v13, "shadowCenterY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 724
    .local v9, "lastIndex":I
    const/4 v8, -0x1

    .line 725
    .local v8, "index":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 726
    .local v6, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v5

    .line 727
    .local v5, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 729
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 730
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 731
    .local v2, "centerX":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 732
    .local v3, "centerY":I
    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 734
    :cond_0
    if-ge v2, v12, :cond_6

    .line 735
    add-int/lit8 v8, v7, 0x1

    .line 749
    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    if-nez v8, :cond_a

    .line 750
    const/4 v8, 0x1

    .line 755
    :cond_2
    :goto_2
    if-lez v9, :cond_3

    if-ge v9, v8, :cond_3

    .line 756
    add-int/lit8 v8, v8, -0x1

    .line 759
    :cond_3
    if-gez v9, :cond_4

    if-gez v8, :cond_4

    .line 760
    add-int/lit8 v8, v5, -0x1

    .line 763
    :cond_4
    if-lez v8, :cond_b

    if-eq v8, v9, :cond_b

    .line 764
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 765
    .local v11, "oldParent":Landroid/view/ViewGroup;
    if-eqz v11, :cond_5

    .line 766
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 769
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;I)V

    .line 773
    .end local v8    # "index":I
    .end local v11    # "oldParent":Landroid/view/ViewGroup;
    :goto_3
    return v8

    .line 737
    .restart local v2    # "centerX":I
    .restart local v3    # "centerY":I
    .restart local v4    # "child":Landroid/view/View;
    .restart local v8    # "index":I
    :cond_6
    move v8, v7

    .line 739
    goto :goto_1

    .line 740
    :cond_7
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 741
    move v8, v7

    .line 742
    goto :goto_1

    .line 743
    :cond_8
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 744
    add-int/lit8 v8, v7, 0x1

    .line 745
    goto :goto_1

    .line 727
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 751
    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    .end local v4    # "child":Landroid/view/View;
    :cond_a
    if-ne v8, v5, :cond_2

    .line 752
    add-int/lit8 v8, v5, -0x1

    goto :goto_2

    :cond_b
    move v8, v9

    .line 773
    goto :goto_3
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1849
    sget-object v1, Lcom/meizu/common/widget/RecipientEdit;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1851
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1852
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1854
    .end local p0    # "address":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private goContactDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 880
    const/4 v7, 0x0

    .line 882
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 884
    if-eqz v7, :cond_1

    .line 885
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 886
    const/4 v7, 0x0

    .line 889
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 891
    .local v1, "uriE":Landroid/net/Uri;
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 898
    .end local v1    # "uriE":Landroid/net/Uri;
    :cond_2
    const/4 v12, 0x0

    .line 899
    .local v12, "lookupUri":Landroid/net/Uri;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 900
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 901
    .local v8, "contactId":J
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 903
    .local v11, "lookupKey":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 904
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 905
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 906
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 907
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 913
    :cond_4
    invoke-static {v8, v9, v11}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 916
    .end local v8    # "contactId":J
    .end local v11    # "lookupKey":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 917
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 920
    :cond_6
    const/4 v10, 0x0

    .line 921
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_8

    .line 923
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v10, v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 930
    .restart local v10    # "intent":Landroid/content/Intent;
    :goto_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 931
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "email"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v0, "name"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v0, "android.intent.action.INSERT"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v0, "com.android.contacts.extra.SUB_TITLE_EXTRA"

    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0184

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v0, "com.android.contacts.extra.TITLE_EXTRA"

    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0183

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual {v10, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 941
    const/high16 v0, 0x80000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 942
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_7

    .line 943
    const/high16 v0, 0x50000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 945
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 946
    return-void

    .line 926
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_8
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.dir/data"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isDefaultInputMethod()Z
    .locals 3

    .prologue
    .line 468
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "lastInputMethodId":Ljava/lang/String;
    const-string v1, "com.baidu.input_mz/com.meizu.input.MzInputService"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1832
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1833
    const/4 v2, 0x0

    .line 1838
    :goto_0
    return v2

    .line 1836
    :cond_0
    invoke-static {p0}, Lcom/meizu/common/widget/RecipientEdit;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1837
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1838
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method private isExchangeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v0, "com.android.exchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.exchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRecipient(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1818
    const/4 v0, 0x0

    .line 1819
    .local v0, "valid":Z
    if-nez v0, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1820
    invoke-static {p1}, Lcom/meizu/common/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    .line 1822
    :cond_0
    return v0
.end method

.method private layoutChildren()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1358
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v5}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_2

    .line 1363
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1365
    .local v4, "widthMeasureSpec":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1367
    .local v0, "heightMeasureSpec":I
    invoke-virtual {p0, v4, v0}, Lcom/meizu/common/widget/RecipientEdit;->measure(II)V

    .line 1372
    .end local v0    # "heightMeasureSpec":I
    .end local v4    # "widthMeasureSpec":I
    :cond_2
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v5}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1373
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1375
    .local v3, "rwidthMeasureSpec":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1376
    .local v2, "rheightMeasureSpec":I
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v5, v3, v2}, Landroid/widget/AbsoluteLayout;->measure(II)V

    .line 1379
    .end local v2    # "rheightMeasureSpec":I
    .end local v3    # "rwidthMeasureSpec":I
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1380
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->layoutChildrenRtl()V

    .line 1385
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1386
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mInDrag:Z

    if-eqz v5, :cond_5

    .line 1387
    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1382
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->layoutChildrenLtr()V

    goto :goto_1

    .line 1388
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mMaxHeight:I

    if-lez v5, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1391
    .restart local v4    # "widthMeasureSpec":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1392
    .restart local v0    # "heightMeasureSpec":I
    invoke-virtual {p0, v4, v0}, Lcom/meizu/common/widget/RecipientEdit;->measure(II)V

    .line 1394
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mMaxHeight:I

    if-lt v5, v6, :cond_6

    .line 1395
    iget v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mMaxHeight:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1397
    :cond_6
    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private layoutChildrenLtr()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1404
    const/16 v5, 0x3c

    .line 1405
    .local v5, "minLen":I
    const/4 v7, 0x0

    .line 1406
    .local v7, "x":I
    const/4 v8, 0x0

    .line 1408
    .local v8, "y":I
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v1

    .line 1409
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1410
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9, v2}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1411
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1409
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1415
    :cond_0
    if-ne v2, v12, :cond_1

    const/4 v9, 0x2

    if-le v1, v9, :cond_1

    instance-of v9, v0, Lcom/meizu/common/widget/RecipientEdit$ItemView;

    if-eqz v9, :cond_1

    move-object v9, v0

    .line 1416
    check-cast v9, Lcom/meizu/common/widget/RecipientEdit$ItemView;

    invoke-virtual {v9}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v10}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1419
    :cond_1
    invoke-virtual {v0, v11, v11}, Landroid/view/View;->measure(II)V

    .line 1421
    add-int/lit8 v9, v1, -0x1

    if-ne v2, v9, :cond_3

    .line 1422
    add-int v6, v7, v5

    .line 1427
    .local v6, "width":I
    :goto_2
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v9

    if-le v6, v9, :cond_2

    if-le v2, v12, :cond_2

    .line 1428
    const/4 v7, 0x0

    .line 1429
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1432
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1433
    .local v3, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1434
    iput v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1437
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_1

    .line 1424
    .end local v3    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v6    # "width":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v6, v7, v9

    .restart local v6    # "width":I
    goto :goto_2

    .line 1440
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "width":I
    :cond_4
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v9}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1442
    .local v4, "lpEditText":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v9

    iget v10, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1443
    iget v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    if-lez v9, :cond_5

    iget v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    .end local v5    # "minLen":I
    :cond_5
    iput v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1444
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v10, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v9, v10}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setWidth(I)V

    .line 1445
    return-void
.end method

.method private layoutChildrenRtl()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1448
    const/16 v6, 0x3c

    .line 1449
    .local v6, "minLen":I
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v7

    .line 1450
    .local v7, "x":I
    const/4 v8, 0x0

    .line 1452
    .local v8, "y":I
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v2

    .line 1453
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 1454
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9, v3}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1455
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1453
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1459
    :cond_0
    const/4 v9, 0x1

    if-ne v3, v9, :cond_1

    const/4 v9, 0x2

    if-le v2, v9, :cond_1

    instance-of v9, v0, Lcom/meizu/common/widget/RecipientEdit$ItemView;

    if-eqz v9, :cond_1

    move-object v9, v0

    .line 1460
    check-cast v9, Lcom/meizu/common/widget/RecipientEdit$ItemView;

    invoke-virtual {v9}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1463
    :cond_1
    invoke-virtual {v0, v11, v11}, Landroid/view/View;->measure(II)V

    .line 1465
    add-int/lit8 v9, v2, -0x1

    if-ne v3, v9, :cond_2

    .line 1466
    move v1, v6

    .line 1471
    .local v1, "childWidth":I
    :goto_2
    sub-int v9, v7, v1

    if-gez v9, :cond_4

    .line 1472
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v9

    if-ge v9, v1, :cond_3

    .line 1473
    const/4 v7, 0x0

    .line 1477
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1482
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1483
    .local v4, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v7, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1484
    iput v8, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    goto :goto_1

    .line 1468
    .end local v1    # "childWidth":I
    .end local v4    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .restart local v1    # "childWidth":I
    goto :goto_2

    .line 1475
    :cond_3
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v9

    sub-int v7, v9, v1

    goto :goto_3

    .line 1479
    :cond_4
    sub-int/2addr v7, v1

    goto :goto_4

    .line 1487
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childWidth":I
    :cond_5
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v9}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1489
    .local v5, "lpEditText":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v9, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1490
    iput v11, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1491
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v10, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v9, v10}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setWidth(I)V

    .line 1492
    return-void
.end method

.method private loadDirectories()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 389
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mDirectoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/meizu/common/widget/RecipientEdit$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/meizu/common/widget/RecipientEdit$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id!=1 AND _id!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 394
    .local v7, "directoryCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 396
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 397
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v13, :cond_0

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/RecipientEdit;->isExchangeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v6, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;

    invoke-direct {v6}, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;-><init>()V

    .line 403
    .local v6, "directory":Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->directoryId:J

    .line 404
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->displayName:Ljava/lang/String;

    .line 406
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->accountName:Ljava/lang/String;

    .line 408
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->accountType:Ljava/lang/String;

    .line 410
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 412
    .local v10, "packageName":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 413
    .local v11, "resourceId":I
    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    .line 415
    :try_start_0
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 417
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->directoryType:Ljava/lang/String;

    .line 418
    iget-object v0, v6, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->directoryType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 419
    const-string v0, "RecipientEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve directory name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mDirectoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :catch_0
    move-exception v8

    .line 423
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "RecipientEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve directory name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 433
    .end local v6    # "directory":Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "resourceId":I
    :cond_2
    if-eqz v7, :cond_3

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_3
    return-void
.end method

.method private queryDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1749
    const-string v7, ""

    .line 1750
    .local v7, "displayName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1752
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mInputType:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_2

    .line 1754
    if-eqz v6, :cond_1

    .line 1755
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1756
    const/4 v6, 0x0

    .line 1759
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1761
    .local v1, "uriE":Landroid/net/Uri;
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v9

    const-string v4, "data1"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1768
    .end local v1    # "uriE":Landroid/net/Uri;
    :cond_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1769
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1770
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v8, :cond_4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1771
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1772
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1773
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1780
    :cond_4
    if-eqz v6, :cond_5

    .line 1781
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1784
    :cond_5
    return-object v7
.end method

.method private refreshLayout(Z)V
    .locals 13
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v9, -0x2

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 536
    if-nez p1, :cond_0

    iget-boolean v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mInDrag:Z

    if-eqz v8, :cond_1

    .line 537
    :cond_0
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 538
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 539
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->layoutChildren()V

    .line 589
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 545
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, v9, :cond_2

    .line 546
    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 547
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/RecipientEdit;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 551
    .local v1, "displayNames":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 552
    .local v2, "i":I
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 553
    .local v6, "number":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 554
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 555
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 556
    move-object v5, v6

    .line 563
    :cond_4
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    const/16 v8, 0x14

    if-lt v2, v8, :cond_3

    .line 569
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 570
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 573
    :cond_6
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getRecipientCount()I

    move-result v0

    .line 578
    .local v0, "count":I
    if-le v0, v12, :cond_8

    .line 579
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    :goto_2
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8, v11}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 587
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 558
    .end local v0    # "count":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "number":Ljava/lang/String;
    :cond_7
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 559
    .local v7, "str":[Ljava/lang/String;
    array-length v8, v7

    if-le v8, v12, :cond_4

    .line 560
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v7, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 582
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "str":[Ljava/lang/String;
    .restart local v0    # "count":I
    :cond_8
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private removeComposingSpan()V
    .locals 6

    .prologue
    .line 479
    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_0

    .line 480
    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 481
    .local v3, "sp":Landroid/text/Spannable;
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 482
    .local v1, "candStart":I
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 483
    .local v0, "candEnd":I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v3, v5, v1}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v3, v0, v5}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "dstr":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .end local v0    # "candEnd":I
    .end local v1    # "candStart":I
    .end local v2    # "dstr":Ljava/lang/String;
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method private removeRecipientAt(IZ)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "removeView"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1988
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1989
    .local v1, "size":I
    const/4 v3, -0x1

    if-le p1, v3, :cond_5

    if-ge p1, v1, :cond_5

    .line 1990
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1991
    .local v0, "removeStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/common/widget/RecipientEdit$RecipientHandler;

    if-eqz v3, :cond_0

    .line 1992
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/common/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v3, v2, v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1994
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1997
    iget v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mSingleRecipientFlag:I

    .line 2000
    :cond_1
    if-eqz p2, :cond_2

    .line 2001
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    .line 2002
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->hasFocus()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V

    .line 2005
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v3, :cond_3

    .line 2006
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v3}, Lcom/meizu/common/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 2008
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnRecipientSimpleChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientSimpleChangedListener;

    if-eqz v3, :cond_4

    .line 2009
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnRecipientSimpleChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientSimpleChangedListener;

    invoke-interface {v3, p0}, Lcom/meizu/common/widget/RecipientEdit$OnRecipientSimpleChangedListener;->OnRecipientSimpleChanged(Lcom/meizu/common/widget/RecipientEdit;)V

    .line 2014
    .end local v0    # "removeStr":Ljava/lang/String;
    :cond_4
    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cons"    # Ljava/lang/String;

    .prologue
    .line 1804
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1805
    const-string v0, ""

    .line 1814
    :cond_0
    :goto_0
    return-object v0

    .line 1808
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1809
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 1810
    .local v1, "token":[Landroid/text/util/Rfc822Token;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1811
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addRecipient(Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1559
    if-nez p1, :cond_1

    move v2, v6

    .line 1603
    :cond_0
    :goto_0
    return v2

    .line 1563
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1564
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1565
    .local v2, "result":I
    const/4 v3, 0x0

    .line 1566
    .local v3, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 1567
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1568
    .local v4, "str":[Ljava/lang/String;
    array-length v5, v4

    if-ne v10, v5, :cond_4

    .line 1569
    aget-object v5, v4, v6

    aget-object v7, v4, v9

    invoke-direct {p0, v5, v7}, Lcom/meizu/common/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1576
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 1577
    add-int/lit8 v2, v2, 0x1

    .line 1566
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1570
    :cond_4
    array-length v5, v4

    if-ne v5, v9, :cond_5

    .line 1571
    aget-object v5, v4, v6

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/meizu/common/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    .line 1572
    :cond_5
    const/4 v5, 0x3

    array-length v7, v4

    if-ne v5, v7, :cond_2

    .line 1573
    aget-object v5, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/meizu/common/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    .line 1581
    .end local v4    # "str":[Ljava/lang/String;
    :cond_6
    if-lez v2, :cond_0

    .line 1582
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v5, :cond_7

    .line 1583
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v5}, Lcom/meizu/common/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1586
    :cond_7
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnRecipientSimpleChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientSimpleChangedListener;

    if-eqz v5, :cond_8

    .line 1587
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnRecipientSimpleChangedListener:Lcom/meizu/common/widget/RecipientEdit$OnRecipientSimpleChangedListener;

    invoke-interface {v5, p0}, Lcom/meizu/common/widget/RecipientEdit$OnRecipientSimpleChangedListener;->OnRecipientSimpleChanged(Lcom/meizu/common/widget/RecipientEdit;)V

    .line 1590
    :cond_8
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_9

    iget v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mSingleRecipientFlag:I

    and-int/lit8 v5, v5, 0x6

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnSingleAddWhenGroupListener:Lcom/meizu/common/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;

    if-eqz v5, :cond_9

    .line 1593
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnSingleAddWhenGroupListener:Lcom/meizu/common/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;

    iget v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mSingleRecipientFlag:I

    iget v7, p0, Lcom/meizu/common/widget/RecipientEdit;->mInputType:I

    and-int/2addr v6, v7

    invoke-interface {v5, v6}, Lcom/meizu/common/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;->onSingleRecipientAddWhenGroup(I)V

    .line 1597
    :cond_9
    iget-boolean v5, p0, Lcom/meizu/common/widget/RecipientEdit;->mIsFirstLayout:Z

    if-nez v5, :cond_0

    .line 1598
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->hasFocus()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V

    goto/16 :goto_0
.end method

.method public addRecipient(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return v1

    .line 1517
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1520
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x1

    .line 598
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/RecipientEdit;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1239
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getListSelection()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1241
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->removeComposingSpan()V

    .line 1242
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1243
    .local v1, "inputText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1244
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1245
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 1270
    .end local v1    # "inputText":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .line 1252
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x43

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 1254
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1255
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1256
    .local v0, "index":I
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3, v2}, Lcom/meizu/common/widget/RecipientEdit;->removeRecipientAt(IZ)Z

    .line 1257
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 1258
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 1259
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v4}, Landroid/widget/AbsoluteLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0

    .line 1261
    .end local v0    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1263
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v4}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 1264
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1265
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 1270
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public getRecipientCount()I
    .locals 3

    .prologue
    .line 2277
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2278
    .local v0, "count":I
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2279
    .local v1, "input":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2280
    add-int/lit8 v0, v0, 0x1

    .line 2283
    :cond_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 351
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 353
    sget-object v1, Lcom/meizu/common/widget/RecipientEdit;->sContentWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    if-nez v1, :cond_0

    .line 354
    new-instance v1, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    const-string v2, "mz_recipient_content"

    invoke-direct {v1, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/meizu/common/widget/RecipientEdit;->sContentWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 358
    sget-object v1, Lcom/meizu/common/widget/RecipientEdit;->sContentWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    # ++operator for: Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mRefCount:I
    invoke-static {v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->access$104(Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;)I

    .line 359
    new-instance v1, Lcom/meizu/common/widget/RecipientEdit$2;

    sget-object v2, Lcom/meizu/common/widget/RecipientEdit;->sContentWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/RecipientEdit$2;-><init>(Lcom/meizu/common/widget/RecipientEdit;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    .line 373
    :cond_1
    new-instance v1, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;

    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;-><init>(Lcom/meizu/common/widget/RecipientEdit;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    .line 374
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 376
    new-instance v1, Lcom/meizu/common/widget/RecipientEdit$DirectoryObserver;

    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/RecipientEdit$DirectoryObserver;-><init>(Lcom/meizu/common/widget/RecipientEdit;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mDirectoryObserver:Landroid/database/ContentObserver;

    .line 380
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 381
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 382
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 826
    instance-of v6, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v6, :cond_1

    .line 827
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 828
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 829
    iput-object v7, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 830
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6, v9}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    instance-of v6, p1, Lcom/meizu/common/widget/RecipientEdit$ItemView;

    if-eqz v6, :cond_6

    .line 833
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->removeComposingSpan()V

    .line 834
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 835
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 836
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 837
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    :cond_2
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 841
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-ne p1, v6, :cond_4

    .line 842
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v7, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 843
    .local v1, "index":I
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 844
    .local v3, "phoneOrEmail":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 845
    .local v2, "name":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 846
    .local v4, "str":[Ljava/lang/String;
    array-length v6, v4

    if-le v6, v9, :cond_3

    .line 847
    aget-object v2, v4, v8

    .line 849
    :cond_3
    invoke-direct {p0, v3, v2}, Lcom/meizu/common/widget/RecipientEdit;->goContactDetail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 852
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "phoneOrEmail":Ljava/lang/String;
    .end local v4    # "str":[Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 858
    :goto_1
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 859
    invoke-virtual {p1, v9}, Landroid/view/View;->setSelected(Z)V

    .line 861
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 863
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, v6, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 855
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6, v8}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    goto :goto_1

    .line 865
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_6
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v6, :cond_7

    .line 866
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 867
    iput-object v7, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 868
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6, v9}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 871
    :cond_7
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->requestFocus()Z

    .line 873
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 875
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 493
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 496
    const v1, 0x7f0e00f0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 497
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d019e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d019f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 502
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v0, v1, -0x100

    .line 333
    .local v0, "imeOptions":I
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/RecipientEdit;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x5

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 346
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    return-object v1

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 341
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b017b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 445
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 446
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mDirectoryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 448
    sget-object v1, Lcom/meizu/common/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/meizu/common/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    # --operator for: Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mRefCount:I
    invoke-static {v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->access$106(Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;)I

    move-result v1

    if-nez v1, :cond_0

    .line 449
    sget-object v1, Lcom/meizu/common/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 450
    sput-object v3, Lcom/meizu/common/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    .line 453
    :cond_0
    sget-object v1, Lcom/meizu/common/widget/RecipientEdit;->sContentWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/meizu/common/widget/RecipientEdit;->sContentWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    # --operator for: Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mRefCount:I
    invoke-static {v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->access$106(Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;)I

    move-result v1

    if-nez v1, :cond_1

    .line 454
    sget-object v1, Lcom/meizu/common/widget/RecipientEdit;->sContentWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 455
    sput-object v3, Lcom/meizu/common/widget/RecipientEdit;->sContentWorker:Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 459
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 460
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 463
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 464
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 21
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v10

    .line 604
    .local v10, "localState":Ljava/lang/Object;
    instance-of v0, v10, Lcom/meizu/common/widget/RecipientEdit$DragInfo;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v14

    .line 709
    :cond_0
    :goto_0
    return v14

    .line 608
    :cond_1
    const/4 v14, 0x0

    .line 609
    .local v14, "result":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 610
    .local v17, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .local v18, "y":I
    move-object v4, v10

    .line 611
    check-cast v4, Lcom/meizu/common/widget/RecipientEdit$DragInfo;

    .line 612
    .local v4, "dragInfo":Lcom/meizu/common/widget/RecipientEdit$DragInfo;
    iget-object v6, v4, Lcom/meizu/common/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/common/widget/RecipientEdit$ItemView;

    .line 614
    .local v6, "dragView":Lcom/meizu/common/widget/RecipientEdit$ItemView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto :goto_0

    .line 616
    :pswitch_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/RecipientEdit;->mInDrag:Z

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V

    .line 618
    const/4 v14, 0x1

    .line 619
    goto :goto_0

    .line 622
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V

    .line 624
    const/4 v14, 0x1

    .line 625
    goto :goto_0

    .line 628
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/RecipientEdit;->requestFocus()Z

    .line 629
    const/4 v14, 0x1

    .line 630
    goto :goto_0

    .line 633
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 634
    .local v9, "lastPos":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/meizu/common/widget/RecipientEdit;->changeViewPos(Lcom/meizu/common/widget/RecipientEdit$DragInfo;II)I

    move-result v12

    .line 635
    .local v12, "pos":I
    if-eq v12, v9, :cond_2

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V

    .line 638
    :cond_2
    const/4 v14, 0x1

    .line 639
    goto :goto_0

    .line 642
    .end local v9    # "lastPos":I
    .end local v12    # "pos":I
    :pswitch_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/meizu/common/widget/RecipientEdit;->changeViewPos(Lcom/meizu/common/widget/RecipientEdit$DragInfo;II)I

    move-result v5

    .line 643
    .local v5, "dragPos":I
    if-lez v5, :cond_4

    .line 644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_3

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 647
    .local v13, "removeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 650
    .end local v13    # "removeStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 651
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 652
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setVisibility(I)V

    .line 653
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    .line 677
    :cond_4
    :goto_1
    const/4 v14, 0x1

    .line 678
    goto/16 :goto_0

    .line 655
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 656
    .local v3, "clipData":Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v19

    if-lez v19, :cond_4

    .line 657
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    .line 658
    .local v8, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 659
    .local v15, "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v16

    .line 660
    .local v16, "token":[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_4

    .line 661
    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-virtual/range {v20 .. v20}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Lcom/meizu/common/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 664
    .local v7, "flag":Z
    if-eqz v7, :cond_6

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 666
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 667
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setVisibility(I)V

    goto :goto_1

    .line 670
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    .line 671
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setVisibility(I)V

    goto :goto_1

    .line 681
    .end local v3    # "clipData":Landroid/content/ClipData;
    .end local v5    # "dragPos":I
    .end local v7    # "flag":Z
    .end local v8    # "item":Landroid/content/ClipData$Item;
    .end local v15    # "text":Ljava/lang/CharSequence;
    .end local v16    # "token":[Landroid/text/util/Rfc822Token;
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 682
    invoke-virtual {v6}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->getVisibility()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 683
    invoke-virtual {v6}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 684
    .local v11, "oldParent":Landroid/view/ViewGroup;
    if-eqz v11, :cond_7

    .line 685
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 688
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 690
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 691
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setVisibility(I)V

    .line 695
    .end local v11    # "oldParent":Landroid/view/ViewGroup;
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    .line 698
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/RecipientEdit;->mInDrag:Z

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V

    .line 700
    const/4 v14, 0x1

    .line 702
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mStartDrag:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/common/widget/RecipientEdit$RecipientDragWatcher;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/common/widget/RecipientEdit$RecipientDragWatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientDragWatcher;->afterDragEnded(Landroid/view/View;)V

    .line 704
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/RecipientEdit;->mStartDrag:Z

    goto/16 :goto_0

    .line 693
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/RecipientEdit;->removeRecipientAt(IZ)Z

    goto :goto_2

    .line 614
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 507
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->removeComposingSpan()V

    .line 508
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 509
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e00f4

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 512
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 519
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 522
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 525
    :cond_2
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V

    .line 527
    iget-boolean v1, p0, Lcom/meizu/common/widget/RecipientEdit;->isFirstHasFocus:Z

    if-ne v4, v1, :cond_3

    .line 528
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->invalidate()V

    .line 529
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->layoutChildren()V

    .line 530
    iput-boolean v3, p0, Lcom/meizu/common/widget/RecipientEdit;->isFirstHasFocus:Z

    .line 533
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 1325
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1328
    .local v1, "inputMethod":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1329
    iput-object v1, p0, Lcom/meizu/common/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    .line 1330
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v2

    and-int/lit16 v0, v2, -0x100

    .line 1331
    .local v0, "imeOptions":I
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1332
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/RecipientEdit;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1333
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x5

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 1334
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1345
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mInputType:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/RecipientEdit;->setInputType(I)V

    .line 1349
    .end local v0    # "imeOptions":I
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1350
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->changePopupBackground()V

    .line 1353
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1354
    return-void

    .line 1336
    .restart local v0    # "imeOptions":I
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 1337
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v4, v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1340
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 1341
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 778
    iget-boolean v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEnabledDrag:Z

    if-eqz v6, :cond_5

    instance-of v6, p1, Lcom/meizu/common/widget/RecipientEdit$ItemView;

    if-eqz v6, :cond_5

    .line 780
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit;->removeComposingSpan()V

    .line 781
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 782
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 783
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 784
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v9, ""

    invoke-virtual {v6, v9}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    :cond_0
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 788
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 789
    iput-object v10, p0, Lcom/meizu/common/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 790
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6, v7}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 793
    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setSelected(Z)V

    .line 796
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v6, p1}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    .line 797
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mFirstDragPos:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 798
    .local v3, "phoneOrEmail":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 799
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 800
    move-object v2, v3

    .line 802
    :cond_2
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-direct {v5, v2, v3, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .local v5, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 805
    .local v0, "data":Landroid/content/ClipData;
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mDragInfo:Lcom/meizu/common/widget/RecipientEdit$DragInfo;

    if-nez v6, :cond_3

    .line 806
    new-instance v6, Lcom/meizu/common/widget/RecipientEdit$DragInfo;

    invoke-direct {v6}, Lcom/meizu/common/widget/RecipientEdit$DragInfo;-><init>()V

    iput-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mDragInfo:Lcom/meizu/common/widget/RecipientEdit$DragInfo;

    .line 808
    :cond_3
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mDragInfo:Lcom/meizu/common/widget/RecipientEdit$DragInfo;

    move-object v6, p1

    check-cast v6, Lcom/meizu/common/widget/RecipientEdit$ItemView;

    iput-object v6, v9, Lcom/meizu/common/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/common/widget/RecipientEdit$ItemView;

    .line 810
    new-instance v6, Lcom/meizu/common/widget/RecipientEdit$RecipientDragShadowBuilder;

    invoke-direct {v6, p0, p1}, Lcom/meizu/common/widget/RecipientEdit$RecipientDragShadowBuilder;-><init>(Lcom/meizu/common/widget/RecipientEdit;Landroid/view/View;)V

    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit;->mDragInfo:Lcom/meizu/common/widget/RecipientEdit$DragInfo;

    invoke-virtual {p1, v0, v6, v9, v8}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1

    .line 811
    .local v1, "flag":Z
    if-eqz v1, :cond_4

    .line 812
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 813
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/common/widget/RecipientEdit$RecipientDragWatcher;

    if-eqz v6, :cond_4

    .line 814
    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/common/widget/RecipientEdit$RecipientDragWatcher;

    invoke-interface {v6, p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientDragWatcher;->beforeDragStarted(Landroid/view/View;)V

    .line 815
    iput-boolean v7, p0, Lcom/meizu/common/widget/RecipientEdit;->mStartDrag:Z

    :cond_4
    move v6, v7

    .line 822
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v1    # "flag":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "phoneOrEmail":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "token":Landroid/text/util/Rfc822Token;
    :goto_0
    return v6

    :cond_5
    move v6, v8

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 1297
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2, v4, v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->measure(II)V

    .line 1298
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getTotalPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getTotalPaddingRight()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 1301
    .local v1, "textWidth":F
    iget v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 1304
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1306
    .local v0, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 1307
    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1308
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1309
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1310
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v3, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setWidth(I)V

    .line 1314
    .end local v0    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1316
    iget-boolean v2, p0, Lcom/meizu/common/widget/RecipientEdit;->mIsFirstLayout:Z

    if-eqz v2, :cond_1

    .line 1317
    iput-boolean v4, p0, Lcom/meizu/common/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 1318
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit;->hasFocus()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1319
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1321
    :cond_1
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setFocusable(Z)V

    .line 1281
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 1
    .param p1, "focusableInTouchMode"    # Z

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 1286
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 2366
    iget v0, p0, Lcom/meizu/common/widget/RecipientEdit;->mInputType:I

    if-eq v0, p1, :cond_0

    .line 2367
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2368
    const v0, 0x7f02024f

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RecipientEdit;->setBackgroundResource(I)V

    .line 2372
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/RecipientEdit;->mInputType:I

    .line 2373
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 2296
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 2297
    return-void
.end method
