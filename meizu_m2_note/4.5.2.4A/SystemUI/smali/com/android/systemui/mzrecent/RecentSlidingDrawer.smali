.class public Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
.super Lcom/android/systemui/mzrecent/MzSlidingDrawer;
.source "RecentSlidingDrawer.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;,
        Lcom/android/systemui/mzrecent/RecentSlidingDrawer$FastTranslateAnimation;,
        Lcom/android/systemui/mzrecent/RecentSlidingDrawer$FastAnimationSet;,
        Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;
    }
.end annotation


# static fields
.field public static FLYME4:Z

.field static mInstance:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field protected static mLandNeedInitFlag:I

.field protected static mLockedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mPortNeedInitFlag:I

.field protected static final sArtworkUri:Landroid/net/Uri;

.field protected static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field protected static sStatusBar:Landroid/app/StatusBarManager;


# instance fields
.field protected MAX_RECENT_TASKS:I

.field protected NUM_BUTTONS:I

.field public PAGE_CHILD:I

.field protected PAGE_COUNT:I

.field c:Landroid/content/Context;

.field colorFilter:Landroid/graphics/PorterDuffColorFilter;

.field protected inputManager:Landroid/view/inputmethod/InputMethodManager;

.field isChild0Add:Z

.field isChild1Add:Z

.field isChild2Add:Z

.field isChild3Add:Z

.field isChild4Add:Z

.field isThumbnail:Z

.field mAM:Landroid/app/ActivityManager;

.field mAOM:Landroid/app/AppOpsManager;

.field mActivePointerDownX:F

.field mActivePointerDownY:F

.field protected mAnchorView:Landroid/view/View;

.field protected mAnchorViewInitialScrollX:I

.field mAniamtionNeed:Z

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAsyncLock:Ljava/lang/Object;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mAutoAdjust:Landroid/widget/LinearLayout;

.field protected mAutoLightState:Landroid/widget/TextView;

.field protected mAutoState:Landroid/widget/ImageView;

.field protected mAutomaticMode:Z

.field public mBackGesturePos:F

.field protected mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mBrightnessModeObserver:Landroid/database/ContentObserver;

.field protected mBrightnessObserver:Landroid/database/ContentObserver;

.field mBroadcastIntentFilter:Landroid/content/IntentFilter;

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mBuildLayersRunnable:Ljava/lang/Runnable;

.field protected mCachedInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mCleanup:Ljava/lang/Runnable;

.field mComponentName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected mCount:I

.field protected mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field protected mCurBrightness:I

.field protected mCurRotation:I

.field protected mCurrentAlbumid:J

.field protected mCurrentInputMethodPkg:Ljava/lang/String;

.field mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

.field mCurrentView:Landroid/view/View;

.field protected mDivider:Landroid/view/View;

.field protected mDragController:Lcom/android/systemui/mzrecent/DragController;

.field protected mDragLayer:Lcom/android/systemui/mzrecent/MzDragLayer;

.field protected mDropAnim:Landroid/animation/ValueAnimator;

.field protected mDropView:Landroid/view/View;

.field mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

.field protected mExternalMediaReceiver:Landroid/content/BroadcastReceiver;

.field protected mFadeOutAnim:Landroid/animation/ValueAnimator;

.field protected mFavorApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mFavors:[Landroid/widget/RelativeLayout;

.field protected mFinalindex:I

.field protected mFirstPageLoadDone:Z

.field protected mFiterAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFiterAppListTop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFiterAppListTopScreen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFromUserTouch:Z

.field protected mGroup:Landroid/view/ViewGroup;

.field protected mHandler:Landroid/os/Handler;

.field public mHasBackGesture:Z

.field mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field mIconTextSize:F

.field mIcons:[Landroid/widget/TextView;

.field mImageViews:[Landroid/widget/ImageView;

.field protected mInAnimation:Landroid/view/animation/AnimationSet;

.field protected mInputMethodObserver:Landroid/database/ContentObserver;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsDraging:Z

.field protected mIsNeedUpdteLivePaper:Z

.field protected mIsNeedUpdteMethod:Z

.field protected mIsOnlineMusicPlaying:Z

.field protected mIsPlaying:Z

.field public mKillArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field mLasTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

.field protected mLastAlbumid:J

.field mLastFocus:Z

.field private mLatestTasksDes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestTasksInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLinearLayouts:[Landroid/widget/LinearLayout;

.field mLock:[Landroid/widget/ImageView;

.field public mManuRemoveTask:Z

.field protected mMaxVolume:I

.field protected mMusicAppName:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

.field protected final mMyUiThread:Ljava/lang/Thread;

.field protected mOffsetX:I

.field protected mOldBrightness:I

.field protected mOnlineMusicName:Ljava/lang/String;

.field protected mOutAnimation:Landroid/view/animation/AnimationSet;

.field protected mPaddingTop:I

.field protected mPaddingTopLand:I

.field protected mPhoneFiterAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPkgArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPkgHavingMoreLaunchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPkgManager:Landroid/content/pm/PackageManager;

.field protected mPointerDown:Z

.field protected mPreFavors:Ljava/lang/String;

.field mPreviousConfigOrientation:I

.field protected mRecentLayout:Landroid/view/View;

.field protected mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

.field mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

.field protected mResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mResolver:Landroid/content/ContentResolver;

.field protected mRotateLayout:Lcom/android/systemui/mzrecent/RotateLayout;

.field protected mScreenBrightnessDim:I

.field protected mSeekBar:Landroid/widget/SeekBar;

.field mSeekFlgView:Landroid/view/View;

.field protected mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

.field public mSettingTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

.field public mStandByAnimationing:Z

.field public mStandByArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskCleaner:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mTaskLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mTmpFavors:Ljava/lang/String;

.field protected mTopComponentName:Landroid/content/ComponentName;

.field protected mTopPkg:Ljava/lang/String;

.field mTransitioner:Landroid/animation/LayoutTransition;

.field protected mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

.field pkgFilter:Landroid/content/IntentFilter;

.field protected recentY:F

.field protected workspaceY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLockedApps:Ljava/util/ArrayList;

    .line 473
    sput v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    .line 474
    sput v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLandNeedInitFlag:I

    .line 545
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->FLYME4:Z

    .line 3677
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 3678
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->sArtworkUri:Landroid/net/Uri;

    .line 3685
    sget-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3686
    sget-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3688
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 647
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    iput v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_COUNT:I

    .line 156
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    .line 157
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_COUNT:I

    iget v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    .line 158
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->MAX_RECENT_TASKS:I

    .line 163
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    .line 164
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_COUNT:I

    new-array v0, v0, [Lcom/android/systemui/mzrecent/MzCellLayout;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    .line 174
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    .line 175
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    .line 177
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    .line 260
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

    .line 261
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild0Add:Z

    .line 262
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild1Add:Z

    .line 263
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild2Add:Z

    .line 264
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild3Add:Z

    .line 265
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild4Add:Z

    .line 268
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    .line 275
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->pkgFilter:Landroid/content/IntentFilter;

    .line 304
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->c:Landroid/content/Context;

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHashMap:Ljava/util/HashMap;

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mArrayList:Ljava/util/ArrayList;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgArrayList:Ljava/util/ArrayList;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByArrayList:Ljava/util/ArrayList;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlackList:Ljava/util/ArrayList;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWhiteList:Ljava/util/ArrayList;

    .line 373
    iput-wide v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentAlbumid:J

    .line 380
    iput-wide v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLastAlbumid:J

    .line 383
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsPlaying:Z

    .line 385
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mOnlineMusicName:Ljava/lang/String;

    .line 386
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsOnlineMusicPlaying:Z

    .line 388
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsDraging:Z

    .line 402
    sget-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->MUSIC_APP:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mMusicAppName:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPhoneFiterAppList:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTop:Ljava/util/ArrayList;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    .line 417
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$1;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 442
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurBrightness:I

    .line 447
    new-array v0, v5, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mScreenBrightnessDim:I

    .line 463
    iput v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgHavingMoreLaunchers:Ljava/util/ArrayList;

    .line 483
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTopComponentName:Landroid/content/ComponentName;

    .line 484
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentInputMethodPkg:Ljava/lang/String;

    .line 486
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$2;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCleanup:Ljava/lang/Runnable;

    .line 520
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFromUserTouch:Z

    .line 542
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 543
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    .line 544
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAsyncLock:Ljava/lang/Object;

    .line 546
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTransitioner:Landroid/animation/LayoutTransition;

    .line 606
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsNeedUpdteMethod:Z

    .line 608
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsNeedUpdteLivePaper:Z

    .line 614
    const/16 v0, 0x24a

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPaddingTop:I

    .line 615
    const/16 v0, 0x155

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPaddingTopLand:I

    .line 616
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLastFocus:Z

    .line 618
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAniamtionNeed:Z

    .line 629
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFirstPageLoadDone:Z

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgList:Ljava/util/ArrayList;

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mComponentName:Ljava/util/ArrayList;

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCachedInfos:Ljava/util/HashMap;

    .line 2620
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$14;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2646
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2711
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$16;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mExternalMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 2915
    iput v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFinalindex:I

    .line 2919
    const/16 v0, 0x9d

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mOffsetX:I

    .line 3639
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isThumbnail:Z

    .line 3878
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 3879
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 3880
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 3882
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDropView:Landroid/view/View;

    .line 3883
    iput v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAnchorViewInitialScrollX:I

    .line 3884
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAnchorView:Landroid/view/View;

    .line 4130
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->recentY:F

    .line 4131
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->workspaceY:F

    .line 4132
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHasBackGesture:Z

    .line 4134
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPointerDown:Z

    .line 4135
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mActivePointerDownX:F

    .line 4136
    const/high16 v0, 0x44a50000    # 1320.0f

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mActivePointerDownY:F

    .line 4139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBackGesturePos:F

    .line 649
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    .line 650
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mMyUiThread:Ljava/lang/Thread;

    .line 651
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_COUNT:I

    iget v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    .line 652
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->MAX_RECENT_TASKS:I

    .line 653
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    .line 654
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    .line 655
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    .line 656
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIconTextSize:F

    .line 657
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    .line 658
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    .line 659
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentInputMethodPkg:Ljava/lang/String;

    .line 660
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$5;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 666
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mInputMethodObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 669
    sput-object p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mInstance:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .line 670
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Lcom/android/systemui/mzrecent/TaskDescription;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    .param p1, "x1"    # Lcom/android/systemui/mzrecent/TaskDescription;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->checkTaskIdValid(Lcom/android/systemui/mzrecent/TaskDescription;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->updateAutoText()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAsyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksInfo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksDes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksDes:Ljava/util/ArrayList;

    return-object p1
.end method

.method private addFavorApp(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1273
    .local p1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 1274
    .local v1, "isFavorAppsChanged":Z
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1275
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1276
    const/4 v2, 0x0

    .line 1277
    .local v2, "isPkgIncluded":Z
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1279
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1281
    const-string v5, "com.android.camera"

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "com.android.gallery3d"

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1297
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1299
    const/4 v2, 0x1

    .line 1310
    .end local v0    # "i":I
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    .line 1311
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    if-nez v1, :cond_2

    .line 1316
    const/4 v1, 0x1

    .line 1275
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1301
    .restart local v0    # "i":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1304
    :cond_4
    const/4 v2, 0x1

    .line 1306
    goto :goto_2

    .line 1278
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1320
    .end local v0    # "i":I
    .end local v2    # "isPkgIncluded":Z
    :cond_6
    if-eqz v1, :cond_7

    .line 1321
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->saveFavorChang(Z)V

    .line 1322
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->refreshFavors()V

    .line 1325
    .end local v3    # "j":I
    :cond_7
    return-void
.end method

.method private checkPkgAutoRunAllowed(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4811
    const/4 v2, 0x1

    .line 4812
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 4814
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4818
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4819
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "_op_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4820
    const/16 v5, 0x41

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4821
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 4815
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 4816
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkTaskIdValid(Lcom/android/systemui/mzrecent/TaskDescription;)Z
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/mzrecent/TaskDescription;

    .prologue
    .line 4714
    const/4 v4, 0x0

    .line 4715
    .local v4, "valid":Z
    if-eqz p1, :cond_1

    iget v5, p1, Lcom/android/systemui/mzrecent/TaskDescription;->taskId:I

    if-lez v5, :cond_1

    .line 4716
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4718
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v5, 0x1c

    const/4 v6, 0x6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v3

    .line 4723
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 4724
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 4725
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v5, p1, Lcom/android/systemui/mzrecent/TaskDescription;->taskId:I

    iget v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v5, v6, :cond_0

    .line 4726
    const/4 v4, 0x1

    .line 4732
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_1
    const-string v5, "RecentSlidingDrawer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkTaskIdValid valid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    return v4
.end method

.method private clearAllInBackground(Z)V
    .locals 3
    .param p1, "manual"    # Z

    .prologue
    .line 4841
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskCleaner:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskCleaner:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 4842
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskCleaner:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4844
    :cond_0
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Z)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskCleaner:Landroid/os/AsyncTask;

    .line 4965
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskCleaner:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4966
    return-void
.end method

.method private getCurrentInputMethod()Ljava/lang/String;
    .locals 6

    .prologue
    .line 4826
    const/4 v2, 0x0

    .line 4827
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4830
    .local v0, "currentInputMethodId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 4831
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4832
    .local v1, "methodId":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 4833
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 4836
    .end local v1    # "methodId":[Ljava/lang/String;
    :cond_0
    const-string v3, "RecentSlidingDrawer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentInputMethodId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    return-object v2
.end method

.method public static getInstance()Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mInstance:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    return-object v0
.end method

.method private hideFirstRecentPageNoneItem()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3044
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v3, v3, v5

    if-eqz v3, :cond_1

    .line 3045
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/android/systemui/mzrecent/MzCellLayout;->getChildCount()I

    move-result v1

    .line 3046
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3047
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Lcom/android/systemui/mzrecent/MzCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3048
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

    if-ne v0, v3, :cond_0

    .line 3049
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Lcom/android/systemui/mzrecent/MzCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3046
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3053
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private hideFirstRencentPageItems()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3032
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v3, v3, v5

    if-eqz v3, :cond_1

    .line 3033
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/android/systemui/mzrecent/MzCellLayout;->getChildCount()I

    move-result v1

    .line 3034
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3035
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Lcom/android/systemui/mzrecent/MzCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3036
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

    if-eq v0, v3, :cond_0

    .line 3037
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Lcom/android/systemui/mzrecent/MzCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3034
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3041
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private showNoneRecentTasks()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3017
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->hideFirstRencentPageItems()V

    .line 3018
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 3019
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040067

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

    .line 3022
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3025
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/mzrecent/MzCellLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3029
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 3027
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAutoText()V
    .locals 3

    .prologue
    .line 4445
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoLightState:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4446
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoLightState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4449
    :cond_0
    return-void
.end method


# virtual methods
.method public AnimationCloseRecent()V
    .locals 0

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animateClose()V

    .line 1842
    return-void
.end method

.method public addDefaultSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 579
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v3, "default_settings_add"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 581
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "default_settings_add"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "recent_favor_saved:"

    const-string v4, "com.android.settings & com.android.settings.Settings,"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 584
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 585
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "default_settings_add"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 586
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 587
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initFavorPage(I)V

    .line 589
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public addFavorApp(Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1246
    if-eqz p1, :cond_1

    .line 1247
    const/4 v1, 0x0

    .line 1251
    .local v1, "isPkgIncluded":Z
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 1253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isAddedToFavors(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1255
    const/4 v1, 0x1

    .line 1259
    :cond_0
    if-nez v1, :cond_1

    .line 1260
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->saveFavorChang(Z)V

    .line 1262
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->refreshFavors()V

    .line 1263
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectAddFavorApp(Landroid/content/Context;)V

    .line 1268
    .end local v0    # "i":I
    .end local v1    # "isPkgIncluded":Z
    :cond_1
    return-void

    .line 1253
    .restart local v0    # "i":I
    .restart local v1    # "isPkgIncluded":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected addWorkspace0()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2442
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2444
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 2445
    .local v4, "rotation":I
    iget v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v9, :cond_0

    .line 2446
    const-string v5, "RecentSlidingDrawer"

    const-string v6, "current rotation not match this drawer, ignore ..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    :goto_0
    return-void

    .line 2449
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040088

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2451
    .local v0, "child":Landroid/widget/LinearLayout;
    iput-boolean v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild0Add:Z

    .line 2452
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/mzrecent/MzCellLayout;

    aput-object v5, v6, v8

    .line 2453
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    aget-object v5, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->prepareTransitioner(Lcom/android/systemui/mzrecent/MzCellLayout;)V

    .line 2454
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v5, v0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->addView(Landroid/view/View;)V

    .line 2456
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2457
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    if-ge v3, v5, :cond_2

    .line 2458
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    aput-object v5, v6, v3

    .line 2459
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    if-nez v5, :cond_1

    .line 2457
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2464
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2465
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2466
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2467
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    const v7, 0x7f0e003c

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v3

    .line 2469
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    const v7, 0x7f0e0125

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v3

    .line 2470
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    const v7, 0x7f0e0141

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v3

    goto :goto_2

    .line 2473
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setTaskItemRotation()V

    goto/16 :goto_0
.end method

.method protected addWorkspace1()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2480
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2482
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 2483
    .local v4, "rotation":I
    iget v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v8, :cond_0

    .line 2484
    const-string v5, "RecentSlidingDrawer"

    const-string v6, "current rotation not match this drawer, ignore ..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :goto_0
    return-void

    .line 2487
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040088

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2489
    .local v0, "child":Landroid/widget/LinearLayout;
    iput-boolean v8, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild1Add:Z

    .line 2490
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/mzrecent/MzCellLayout;

    aput-object v5, v6, v8

    .line 2491
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v5, v0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->addView(Landroid/view/View;)V

    .line 2493
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2494
    .local v1, "count":I
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    .local v3, "i":I
    :goto_1
    iget v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_2

    .line 2495
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    sub-int v5, v3, v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    aput-object v5, v6, v3

    .line 2496
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    if-nez v5, :cond_1

    .line 2494
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2501
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2502
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2503
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2504
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    const v7, 0x7f0e003c

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v3

    .line 2506
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    const v7, 0x7f0e0125

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v3

    .line 2507
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v3

    const v7, 0x7f0e0141

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v3

    goto :goto_2

    .line 2510
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setTaskItemRotation()V

    goto/16 :goto_0
.end method

.method protected addWorkspace2()V
    .locals 6

    .prologue
    .line 2517
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040088

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2519
    .local v0, "child":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild2Add:Z

    .line 2520
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    const/4 v5, 0x2

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/mzrecent/MzCellLayout;

    aput-object v3, v4, v5

    .line 2521
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v3, v0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->addView(Landroid/view/View;)V

    .line 2522
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2523
    .local v1, "count":I
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v2, v3, 0x2

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_1

    .line 2524
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v2

    .line 2526
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    .line 2523
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2531
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2532
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2533
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2534
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    const v5, 0x7f0e003c

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v2

    .line 2536
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    const v5, 0x7f0e0125

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v2

    .line 2537
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    const v5, 0x7f0e0141

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v2

    goto :goto_1

    .line 2539
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setTaskItemRotation()V

    .line 2543
    return-void
.end method

.method protected addWorkspace3()V
    .locals 6

    .prologue
    .line 2546
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040088

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2548
    .local v0, "child":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild3Add:Z

    .line 2549
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    const/4 v5, 0x3

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/mzrecent/MzCellLayout;

    aput-object v3, v4, v5

    .line 2550
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v3, v0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->addView(Landroid/view/View;)V

    .line 2551
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2552
    .local v1, "count":I
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v2, v3, 0x3

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v3, v3, 0x4

    if-ge v2, v3, :cond_1

    .line 2553
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v3, v3, 0x3

    sub-int v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v2

    .line 2555
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    .line 2552
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2560
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2561
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2562
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2563
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    const v5, 0x7f0e003c

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v2

    .line 2565
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    const v5, 0x7f0e0125

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v2

    .line 2566
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    const v5, 0x7f0e0141

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v2

    goto :goto_1

    .line 2568
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setTaskItemRotation()V

    .line 2572
    return-void
.end method

.method protected addWorkspace4()V
    .locals 6

    .prologue
    .line 2575
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040088

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2577
    .local v0, "child":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild4Add:Z

    .line 2578
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksPage:[Lcom/android/systemui/mzrecent/MzCellLayout;

    const/4 v5, 0x4

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/mzrecent/MzCellLayout;

    aput-object v3, v4, v5

    .line 2579
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v3, v0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->addView(Landroid/view/View;)V

    .line 2580
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2581
    .local v1, "count":I
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v2, v3, 0x4

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v3, v3, 0x5

    if-ge v2, v3, :cond_1

    .line 2582
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v3, v3, 0x4

    sub-int v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v2

    .line 2584
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    .line 2581
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2589
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2590
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2591
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2592
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    const v5, 0x7f0e003c

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v2

    .line 2594
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    const v5, 0x7f0e0125

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v2

    .line 2595
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    const v5, 0x7f0e0141

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v2

    goto :goto_1

    .line 2597
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setTaskItemRotation()V

    .line 2598
    return-void
.end method

.method protected animationStandByView()V
    .locals 15

    .prologue
    .line 3144
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3145
    .local v1, "cellLayout":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 3146
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 3147
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 3149
    .local v4, "lastLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByArrayList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 3150
    .local v8, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz v4, :cond_1

    .line 3151
    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetViewState(Landroid/view/View;)V

    .line 3152
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 3154
    const v11, 0x7f0e0142

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 3156
    .local v5, "layout2":Landroid/widget/LinearLayout;
    const v11, 0x7f0e003c

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 3158
    .local v10, "view2":Landroid/widget/ImageView;
    const v11, 0x7f0e0125

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 3160
    .local v9, "textView2":Landroid/widget/TextView;
    const v11, 0x7f0e0141

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 3163
    .local v6, "lockPre":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v11}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getCurrentPage()I

    move-result v2

    .line 3164
    .local v2, "current":I
    const/4 v11, 0x1

    if-ne v2, v11, :cond_2

    const/4 v7, 0x1

    .line 3166
    .local v7, "needAnimation":Z
    :goto_0
    invoke-virtual {v8}, Lcom/android/systemui/mzrecent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3167
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3168
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 3172
    .local v3, "currentConfig":Landroid/content/res/Configuration;
    if-eqz v7, :cond_0

    .line 3173
    const/4 v0, 0x0

    .line 3174
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    iget v11, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 3175
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v0, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3182
    .restart local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :goto_1
    const-wide/16 v12, 0xc8

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3183
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3186
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    invoke-virtual {v8}, Lcom/android/systemui/mzrecent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3187
    iget-object v11, v8, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isAppLocked(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3188
    const v11, 0x7f020339

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3193
    :goto_2
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByArrayList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3198
    .end local v2    # "current":I
    .end local v3    # "currentConfig":Landroid/content/res/Configuration;
    .end local v4    # "lastLayout":Landroid/widget/LinearLayout;
    .end local v5    # "layout2":Landroid/widget/LinearLayout;
    .end local v6    # "lockPre":Landroid/widget/ImageView;
    .end local v7    # "needAnimation":Z
    .end local v8    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v9    # "textView2":Landroid/widget/TextView;
    .end local v10    # "view2":Landroid/widget/ImageView;
    :cond_1
    return-void

    .line 3164
    .restart local v2    # "current":I
    .restart local v4    # "lastLayout":Landroid/widget/LinearLayout;
    .restart local v5    # "layout2":Landroid/widget/LinearLayout;
    .restart local v6    # "lockPre":Landroid/widget/ImageView;
    .restart local v8    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .restart local v9    # "textView2":Landroid/widget/TextView;
    .restart local v10    # "view2":Landroid/widget/ImageView;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 3178
    .restart local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    .restart local v3    # "currentConfig":Landroid/content/res/Configuration;
    .restart local v7    # "needAnimation":Z
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v0, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    .line 3190
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method protected animiationPerformance()V
    .locals 23

    .prologue
    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 2923
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByAnimationing:Z

    .line 2924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setTextVisiable(Landroid/view/View;I)V

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 2927
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 2929
    .local v7, "count":I
    const/4 v11, 0x0

    .line 2931
    .local v11, "index":I
    const/4 v8, 0x0

    .line 2933
    .local v8, "duration":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_2

    if-lt v10, v11, :cond_2

    .line 2934
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2935
    .local v5, "child":Landroid/view/View;
    if-nez v5, :cond_1

    .line 2933
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2938
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v5, v0, :cond_0

    .line 2939
    move v11, v10

    .line 2943
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFinalindex:I

    .line 2944
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mGroup:Landroid/view/ViewGroup;

    .line 2945
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCount:I

    .line 2946
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2947
    .local v16, "translateAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/TranslateAnimation;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2948
    .local v6, "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v10, v11

    :goto_1
    if-ge v10, v7, :cond_5

    .line 2949
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2950
    .restart local v5    # "child":Landroid/view/View;
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v5, v0, :cond_4

    .line 2948
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2952
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2954
    .local v14, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz v14, :cond_3

    .line 2956
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    add-int/lit8 v20, v10, -0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2958
    .local v4, "animation":Landroid/view/animation/TranslateAnimation;
    const/16 v19, 0xc8

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2960
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2961
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2963
    .end local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v5    # "child":Landroid/view/View;
    .end local v14    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2965
    .local v17, "translateCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    .line 2966
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/TranslateAnimation;

    .line 2967
    .restart local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2969
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2971
    add-int/lit8 v19, v17, -0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_6

    .line 2973
    new-instance v19, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$20;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$20;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2965
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2996
    .end local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v5    # "child":Landroid/view/View;
    :cond_7
    if-nez v17, :cond_8

    .line 2997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0e003c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 3000
    .local v18, "view2":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0e0125

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 3002
    .local v15, "textView2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0e0141

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 3004
    .local v13, "lock":Landroid/widget/ImageView;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3005
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3007
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3f0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3012
    .end local v6    # "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "count":I
    .end local v8    # "duration":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v12    # "j":I
    .end local v13    # "lock":Landroid/widget/ImageView;
    .end local v15    # "textView2":Landroid/widget/TextView;
    .end local v16    # "translateAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/TranslateAnimation;>;"
    .end local v17    # "translateCount":I
    .end local v18    # "view2":Landroid/widget/ImageView;
    :cond_8
    return-void
.end method

.method public clearColorFilters()V
    .locals 5

    .prologue
    .line 4691
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 4692
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 4693
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v4, v1

    .line 4694
    .local v3, "lr":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4695
    const v4, 0x7f0e003c

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4697
    .local v2, "image":Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 4698
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 4699
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4701
    :cond_0
    if-eqz v0, :cond_1

    .line 4702
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 4703
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4692
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "image":Landroid/widget/ImageView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4708
    .end local v1    # "i":I
    .end local v3    # "lr":Landroid/widget/LinearLayout;
    :cond_2
    return-void
.end method

.method protected clearData()V
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1902
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 1919
    return-void
.end method

.method public clearForGuestureModeChang()V
    .locals 1

    .prologue
    .line 4588
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->forceStopAll(Z)V

    .line 4589
    return-void
.end method

.method public clearRecentAppsByPkgBackground(Lcom/android/systemui/mzrecent/TaskDescription;)V
    .locals 6
    .param p1, "task"    # Lcom/android/systemui/mzrecent/TaskDescription;

    .prologue
    .line 4753
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4754
    .local v3, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    const/4 v2, 0x0

    .line 4755
    .local v2, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4756
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4758
    :cond_0
    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 4759
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 4760
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    check-cast v2, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 4761
    .restart local v2    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    iget-object v4, p1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4762
    sget-object v4, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mGallery3dPkg:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/mzrecent/RecentTasksLoader;->pkgEasyLauncher:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p1, Lcom/android/systemui/mzrecent/TaskDescription;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, v2, Lcom/android/systemui/mzrecent/TaskDescription;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4767
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4768
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4759
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4774
    .end local v0    # "j":I
    :cond_4
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 4775
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    check-cast v2, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 4776
    .restart local v2    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    iget v4, v2, Lcom/android/systemui/mzrecent/TaskDescription;->persistentTaskId:I

    iget-object v5, p1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->removeTaskPolicy(ILjava/lang/String;)V

    .line 4777
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4774
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4779
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4781
    const-wide/16 v4, 0x12c

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4785
    :goto_2
    iget-object v4, p1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->forceStopPolicy(Ljava/lang/String;)V

    .line 4786
    return-void

    .line 4782
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public clearRecentAppsPolicy(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4741
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->removeTaskPolicy(ILjava/lang/String;)V

    .line 4742
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$26;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$26;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4750
    return-void
.end method

.method public closePanleIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4592
    const-string v1, "RecentSlidingDrawer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closePanleIfNeeded isOpened() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ev.getRawY() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",PhoneStatusBar.RECENT_DISMISS_DOWN_POS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->RECENT_DISMISS_DOWN_POS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isSelectDialogVisible()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->RECENT_DISMISS_DOWN_POS:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 4595
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 4596
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animateClose()V

    .line 4598
    :cond_0
    return v0

    .line 4594
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createActivityOptions()Landroid/app/ActivityOptions;
    .locals 6

    .prologue
    .line 1652
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.launcher3"

    const-string v4, "com.android.launcher3.Launcher"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    .local v0, "desktopName":Landroid/content/ComponentName;
    const/4 v1, 0x1

    .line 1655
    .local v1, "isDesktop":Z
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1656
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    const v3, 0xa04002c

    move v4, v3

    :goto_0
    if-eqz v1, :cond_1

    const v3, 0xa040018

    :goto_1
    invoke-static {v5, v4, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 1663
    .local v2, "opts":Landroid/app/ActivityOptions;
    return-object v2

    .line 1656
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :cond_0
    const v3, 0xa040023

    move v4, v3

    goto :goto_0

    :cond_1
    const v3, 0xa040024

    goto :goto_1
.end method

.method protected createAnimations()V
    .locals 10

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mInAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 3566
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$FastAnimationSet;

    invoke-direct {v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 3567
    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 3568
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3569
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3571
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3576
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3579
    .end local v9    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_1

    .line 3580
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$FastAnimationSet;

    invoke-direct {v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 3581
    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 3582
    .restart local v9    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3583
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3585
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3590
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3593
    .end local v9    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_1
    return-void
.end method

.method public dismissSelectDialog()V
    .locals 1

    .prologue
    .line 4323
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4324
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->dismiss()V

    .line 4326
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1846
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1859
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 1852
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v1, :cond_0

    .line 1853
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1854
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideRecentPanel()V

    goto :goto_0

    .line 1846
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "devent"    # Landroid/view/MotionEvent;

    .prologue
    .line 4563
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2603
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2607
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2614
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2615
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mInputMethodObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2618
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .line 2616
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2608
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method findAllResolveInfo()V
    .locals 14

    .prologue
    .line 983
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAsyncLock:Ljava/lang/Object;

    monitor-enter v11

    .line 984
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v8, v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 985
    .local v8, "mainIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 987
    .local v2, "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 988
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 990
    .local v7, "mPm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v7, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 992
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    .line 994
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 995
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 996
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 997
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 998
    .local v9, "nameString":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1001
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgHavingMoreLaunchers:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1007
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "nameString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1008
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "RecentSlidingDrawer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "queryIntentActivities error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v11

    .line 1011
    return-void

    .line 1010
    .end local v2    # "context":Landroid/content/Context;
    .end local v7    # "mPm":Landroid/content/pm/PackageManager;
    .end local v8    # "mainIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10
.end method

.method public forceStopAll(Z)V
    .locals 1
    .param p1, "manual"    # Z

    .prologue
    .line 3378
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearAllInBackground(Z)V

    .line 3379
    if-eqz p1, :cond_0

    .line 3380
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClearAll(Landroid/content/Context;)V

    .line 3382
    :cond_0
    return-void
.end method

.method public forceStopPackage()V
    .locals 8

    .prologue
    .line 2817
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    if-nez v3, :cond_1

    .line 2843
    :cond_0
    :goto_0
    return-void

    .line 2819
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->AnimationCloseRecent()V

    .line 2820
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2822
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    iget-object v2, v3, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    .line 2823
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    iget v1, v3, Lcom/android/systemui/mzrecent/TaskDescription;->persistentTaskId:I

    .line 2825
    .local v1, "id":I
    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isAppLocked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2829
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 2830
    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->inBlackList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2831
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$17;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$17;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Ljava/lang/String;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2842
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animiationPerformance()V

    goto :goto_0
.end method

.method public forceStopPackage(Landroid/view/View;Z)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dimiss"    # Z

    .prologue
    const/4 v8, 0x0

    .line 2869
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 2870
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2871
    .local v5, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-nez v5, :cond_1

    .line 2913
    :cond_0
    :goto_0
    return-void

    .line 2873
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    .line 2874
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3f3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2875
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2877
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, v5, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    .line 2878
    .local v3, "pkgName":Ljava/lang/String;
    iget v1, v5, Lcom/android/systemui/mzrecent/TaskDescription;->persistentTaskId:I

    .line 2880
    .local v1, "id":I
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$18;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$18;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Lcom/android/systemui/mzrecent/TaskDescription;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2889
    if-eqz p2, :cond_2

    .line 2890
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->AnimationCloseRecent()V

    goto :goto_0

    .line 2893
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    .line 2894
    invoke-virtual {v5}, Lcom/android/systemui/mzrecent/TaskDescription;->getNewIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2895
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 2896
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2898
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animiationPerformance()V

    .line 2899
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2900
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->showNoneRecentTasks()V

    .line 2901
    new-instance v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$19;

    invoke-direct {v6, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$19;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public forceStopPolicy(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4793
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 4794
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->checkPkgAutoRunAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 4795
    .local v0, "autorun":Z
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentInputMethodPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 4797
    .local v1, "isCurrentInputMethod":Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->inBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 4800
    :cond_0
    const-string v2, "RecentSlidingDrawer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in black list or not allow autorun, forceStopPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 4808
    .end local v0    # "autorun":Z
    .end local v1    # "isCurrentInputMethod":Z
    :cond_1
    :goto_1
    return-void

    .line 4795
    .restart local v0    # "autorun":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 4805
    .restart local v1    # "isCurrentInputMethod":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getBrightness()I
    .locals 5

    .prologue
    .line 3795
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getBrightnessMode(I)I

    move-result v1

    .line 3796
    .local v1, "mode":I
    const/4 v0, 0x0

    .line 3803
    .local v0, "brightness":F
    iget v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurBrightness:I

    if-gez v2, :cond_0

    .line 3804
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 3810
    :goto_0
    iget v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mScreenBrightnessDim:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mScreenBrightnessDim:I

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 3813
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 3808
    :cond_0
    iget v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_0
.end method

.method protected getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 3817
    move v0, p1

    .line 3819
    .local v0, "brightnessMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3824
    :goto_0
    return v0

    .line 3822
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCurRecentAppAmount()I
    .locals 1

    .prologue
    .line 4737
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDragLayer()Lcom/android/systemui/mzrecent/MzDragLayer;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDragLayer:Lcom/android/systemui/mzrecent/MzDragLayer;

    return-object v0
.end method

.method public getFavorsViews()[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLinearLayouts()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getNeedInitFlag()I
    .locals 1

    .prologue
    .line 4375
    sget v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    return v0
.end method

.method public getPkgInfosInstalled()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4371
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolveInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getRectTop()I
    .locals 2

    .prologue
    .line 2807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2812
    .local v0, "mRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    return v1
.end method

.method public getTopActivity()Landroid/content/ComponentName;
    .locals 6

    .prologue
    .line 4118
    const/4 v2, 0x0

    .line 4119
    .local v2, "ret":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4121
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 4123
    .local v3, "runTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4124
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    .line 4125
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4127
    :cond_0
    return-object v2
.end method

.method protected handleAddFavor()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1193
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1194
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1195
    .local v2, "pkgInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    const-string v5, " & "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1201
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkgInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string v5, "RecentSlidingDrawer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAddFavor , mTmpFavors = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sb.toString() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1204
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setNeedInitFlag(I)V

    .line 1205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    .line 1207
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    if-nez v5, :cond_3

    .line 1208
    new-instance v5, Lcom/android/systemui/mzrecent/FavorSelectDialog;

    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/mzrecent/FavorSelectDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .line 1209
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    new-instance v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$9;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1217
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v5}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1218
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 1219
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1220
    .local v0, "favorParams":Landroid/view/WindowManager$LayoutParams;
    iget v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 1221
    :cond_2
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1222
    const/16 v5, -0x55

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1227
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1228
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v5, p0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->setRecentDrawer(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    .line 1230
    .end local v0    # "favorParams":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "window":Landroid/view/Window;
    :cond_3
    iget v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setFavorSelectDialogRotation(I)V

    .line 1234
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v5}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1235
    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v5}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->show()V

    .line 1237
    :cond_4
    return-void

    .line 1224
    .restart local v0    # "favorParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "window":Landroid/view/Window;
    :cond_5
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1225
    const/16 v5, 0x1c

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method protected handleFavorClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1086
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->handleAddFavor()V

    .line 1180
    :goto_0
    return-void

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animateClose()V

    .line 1090
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Landroid/content/pm/ResolveInfo;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 4242
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 4287
    :cond_0
    :goto_0
    return v8

    .line 4244
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->updateData()V

    goto :goto_0

    .line 4247
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animateClose()V

    .line 4248
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$24;

    invoke-direct {v4, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$24;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    const-wide/16 v6, 0xe6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4258
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->refreshFavors()V

    goto :goto_0

    .line 4261
    :pswitch_3
    iput-boolean v8, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    .line 4262
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v3}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFinalindex:I

    if-nez v3, :cond_0

    .line 4264
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4268
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    const/4 v4, 0x6

    :try_start_0
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v2

    .line 4272
    .local v2, "topTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 4273
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTopPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4275
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideRecentPanel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4278
    .end local v2    # "topTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_0
    move-exception v1

    .line 4279
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4242
    nop

    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleOnClick(Landroid/view/View;Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dimss"    # Z

    .prologue
    .line 1573
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    .line 1574
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 1575
    .local v0, "ad":Lcom/android/systemui/mzrecent/TaskDescription;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1576
    .local v2, "context":Landroid/content/Context;
    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1582
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animateClose()V

    .line 1584
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Lcom/android/systemui/mzrecent/TaskDescription;Landroid/app/ActivityManager;Landroid/content/Context;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1640
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectEnterRecentApp(Landroid/content/Context;)V

    .line 1648
    return-void
.end method

.method public inBlackList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2846
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2849
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2850
    const/4 v1, 0x1

    .line 2854
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 2848
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2854
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected initFavorPage(I)V
    .locals 13
    .param p1, "ignoreIndex"    # I

    .prologue
    .line 1668
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 1669
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1671
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "recent_favor_saved:"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1673
    .local v2, "favorString":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPreFavors:Ljava/lang/String;

    .line 1674
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPreFavors:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    .line 1675
    move v5, p1

    .line 1676
    .local v5, "index":I
    const/4 v0, -0x1

    .line 1677
    .local v0, "curIndex":I
    const/4 v3, 0x0

    .line 1678
    .local v3, "favors":[Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1679
    .local v9, "mainIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1682
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1694
    .local v6, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 1697
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1698
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    array-length v10, v3

    if-lez v10, :cond_1

    .line 1700
    const/4 v10, -0x1

    if-le v5, v10, :cond_1

    .line 1701
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->updateFavorSettings([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1702
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 1703
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1708
    :cond_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1709
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v3

    if-ge v4, v10, :cond_4

    .line 1710
    if-eq v4, v5, :cond_2

    .line 1711
    move v0, v4

    .line 1712
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 1713
    aget-object v11, v3, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    aget-object v11, v3, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1721
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1709
    .end local v7    # "j":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1683
    .end local v4    # "i":I
    .end local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 1684
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "RecentSlidingDrawer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolveInfoList:Ljava/util/List;

    .restart local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_0

    .line 1712
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    .restart local v7    # "j":I
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1728
    .end local v4    # "i":I
    .end local v7    # "j":I
    :cond_4
    :try_start_2
    invoke-direct {p0, v8}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->addFavorApp(Ljava/util/ArrayList;)V

    .line 1732
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->refreshFavors()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1737
    :cond_6
    :goto_3
    return-void

    .line 1733
    :catch_1
    move-exception v1

    .line 1734
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initFavorPage(I)V

    .line 1735
    const-string v10, "RecentSlidingDrawer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", curIndex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public initRecentPages(Z)V
    .locals 5
    .param p1, "refreshTaskPage"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 880
    if-eqz p1, :cond_1

    .line 881
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearData()V

    .line 884
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild0Add:Z

    if-nez v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->addWorkspace0()V

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentTasks()V

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v0, v2}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setIsStart(Z)V

    .line 890
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v0, v2}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setCurrentPage(I)V

    .line 892
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v0, v2}, Lcom/android/systemui/mzrecent/WorkspaceItem;->snapToPage(I)V

    .line 893
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v0, v3}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setIsStart(Z)V

    .line 894
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFirstPageLoadDone:Z

    .line 899
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setDeleteLayout(IZ)V

    .line 900
    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setMusicLayout(I)V

    .line 901
    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setDeleteBackgroundNomal(I)V

    .line 906
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->updateConfigure()V

    .line 907
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initSeekBarState()V

    .line 909
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCleanup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 911
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByAnimationing:Z

    .line 915
    sget-boolean v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->FLYME4:Z

    if-nez v0, :cond_2

    .line 916
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getNeedInitFlag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 917
    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initFavorPage(I)V

    .line 918
    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setNeedInitFlag(I)V

    .line 929
    :cond_2
    :goto_0
    return-void

    .line 919
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getNeedInitFlag()I

    move-result v0

    if-nez v0, :cond_4

    .line 920
    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initFavorPage(I)V

    .line 921
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetInitFlag()V

    goto :goto_0

    .line 923
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "recent_favor_saved:"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPreFavors:Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPreFavors:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    goto :goto_0
.end method

.method public initRecentTasks()V
    .locals 3

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 3386
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3388
    :cond_0
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskLoader:Landroid/os/AsyncTask;

    .line 3427
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3428
    return-void
.end method

.method protected initSeekBarState()V
    .locals 2

    .prologue
    .line 3788
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3789
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mOldBrightness:I

    .line 3790
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mOldBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3791
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3792
    return-void
.end method

.method protected initialFilterApps()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.alarmclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.skype.raider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.sgiggle.production"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.viber.voip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTop:Ljava/util/ArrayList;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    const-string v1, "com.android.launcher3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    const-string v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPhoneFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPhoneFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPhoneFiterAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    invoke-static {}, Landroid/os/BuildExt;->isShopDemoVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlackList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.media.music"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlackList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.media.video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlackList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.media.gallery"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgHavingMoreLaunchers:Ljava/util/ArrayList;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgHavingMoreLaunchers:Ljava/util/ArrayList;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    return-void
.end method

.method isAddedToFavors(Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x1

    .line 4291
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4293
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4295
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgHavingMoreLaunchers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4297
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 4307
    .end local v0    # "i":I
    :goto_1
    return v1

    .restart local v0    # "i":I
    :cond_0
    move v1, v2

    .line 4302
    goto :goto_1

    .line 4292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4307
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isAppLocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4142
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 4143
    sget-object v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLockedApps:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 4144
    sget-object v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLockedApps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4163
    :goto_0
    return v1

    .line 4151
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recent_lock_saved:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x3

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4153
    .local v0, "status":I
    if-ne v0, v1, :cond_1

    .line 4156
    sget-object v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLockedApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "status":I
    :cond_1
    move v1, v2

    .line 4163
    goto :goto_0
.end method

.method public isClearingAll()Z
    .locals 2

    .prologue
    .line 4969
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskCleaner:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTaskCleaner:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectDialogVisible()Z
    .locals 1

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    if-eqz v0, :cond_0

    .line 4234
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->isShowing()Z

    move-result v0

    .line 4236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4617
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4618
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4620
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 4619
    :catch_0
    move-exception v1

    .line 4620
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected listenMusicAppChanged(Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;)V
    .locals 1
    .param p1, "appName"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    .prologue
    .line 3521
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mMusicAppName:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    if-eq v0, p1, :cond_0

    .line 3522
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mMusicAppName:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    .line 3526
    :cond_0
    return-void
.end method

.method public moveHandle(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, -0x2711

    const/16 v3, -0x2712

    const/4 v2, 0x0

    .line 4626
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4627
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 4628
    :cond_0
    if-ne p1, v4, :cond_2

    .line 4629
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 4645
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->moveHandle(I)V

    .line 4646
    return-void

    .line 4630
    :cond_2
    if-ne p1, v3, :cond_3

    .line 4631
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDrawerHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 4633
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 4636
    :cond_4
    if-ne p1, v4, :cond_5

    .line 4637
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 4638
    :cond_5
    if-ne p1, v3, :cond_6

    .line 4639
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDrawerHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 4641
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 551
    invoke-super {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->onAttachedToWindow()V

    .line 553
    sget-boolean v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->FLYME4:Z

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$3;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 561
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 564
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$4;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 570
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->addDefaultSettings()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->setHandler(Landroid/os/Handler;)V

    .line 576
    return-void
.end method

.method protected onBrightnessChanged()V
    .locals 2

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3829
    return-void
.end method

.method protected onBrightnessModeChanged()V
    .locals 5

    .prologue
    .line 1069
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoAdjust:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 1070
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1073
    .local v1, "value":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1074
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoState:Landroid/widget/ImageView;

    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1082
    .end local v1    # "value":I
    :cond_0
    :goto_0
    return-void

    .line 1076
    .restart local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoState:Landroid/widget/ImageView;

    const v3, 0x7f020046

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1079
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1018
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->handleOnClick(Landroid/view/View;Z)V

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->handleFavorClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 15

    .prologue
    .line 675
    invoke-super {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->onFinishInflate()V

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 680
    .local v0, "context":Landroid/content/Context;
    sget-object v12, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->sStatusBar:Landroid/app/StatusBarManager;

    if-nez v12, :cond_0

    .line 681
    const-string v12, "statusbar"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/StatusBarManager;

    sput-object v12, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->sStatusBar:Landroid/app/StatusBarManager;

    .line 686
    :cond_0
    new-instance v12, Lcom/android/systemui/mzrecent/DragController;

    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/systemui/mzrecent/DragController;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    .line 687
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    invoke-virtual {v12, p0}, Lcom/android/systemui/mzrecent/DragController;->setRecentDrawer(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    .line 689
    const v12, 0x7f0e014e

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/SeekBar;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSeekBar:Landroid/widget/SeekBar;

    .line 690
    const v12, 0x7f0e014c

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSeekFlgView:Landroid/view/View;

    .line 691
    const v12, 0x7f0e0037

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentLayout:Landroid/view/View;

    .line 692
    const v12, 0x7f0e014d

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/mzrecent/RotateLayout;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRotateLayout:Lcom/android/systemui/mzrecent/RotateLayout;

    .line 694
    const v12, 0x7f0e0155

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/mzrecent/WorkspaceItem;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    .line 695
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    .line 696
    .local v11, "workspace":Lcom/android/systemui/mzrecent/WorkspaceItem;
    invoke-virtual {v11, p0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setRecentDrawer(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    .line 697
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDivider:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setDivider(Landroid/view/View;)V

    .line 698
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setHapticFeedbackEnabled(Z)V

    .line 699
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 700
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 701
    .local v10, "wm":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 702
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 703
    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 704
    .local v8, "screen_w":I
    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 705
    .local v7, "screen_h":I
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v12}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 706
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 707
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v12, v4}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v12, p0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setPageSwitchListener(Lcom/android/systemui/mzrecent/PagedView$PageSwitchListener;)V

    .line 710
    sget-boolean v12, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->FLYME4:Z

    if-nez v12, :cond_2

    .line 711
    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    const v12, 0x7f0e0146

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    aput-object v12, v13, v14

    .line 712
    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v14, 0x1

    const v12, 0x7f0e0147

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    aput-object v12, v13, v14

    .line 713
    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v14, 0x2

    const v12, 0x7f0e0148

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    aput-object v12, v13, v14

    .line 714
    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v14, 0x3

    const v12, 0x7f0e0149

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    aput-object v12, v13, v14

    .line 715
    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v14, 0x4

    const v12, 0x7f0e014a

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    aput-object v12, v13, v14

    .line 716
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v12, 0x5

    if-ge v3, v12, :cond_1

    .line 717
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v12, v12, v3

    invoke-virtual {v12, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 720
    :cond_1
    const v12, 0x7f0e014f

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoAdjust:Landroid/widget/LinearLayout;

    .line 721
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoAdjust:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$6;

    invoke-direct {v13, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$6;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    const v12, 0x7f0e0151

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoState:Landroid/widget/ImageView;

    .line 730
    const v12, 0x7f0e0150

    invoke-virtual {p0, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoLightState:Landroid/widget/TextView;

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->onBrightnessModeChanged()V

    .line 744
    .end local v3    # "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 745
    const-string v12, "audio"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAudioManager:Landroid/media/AudioManager;

    .line 747
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v12

    iput v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mMaxVolume:I

    .line 750
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.music.metachanged"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.music.playstatechanged"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.music.playbackcomplete"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.music.name_state"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.musiconline.playstatechanged"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.musiconline.playbackcomplete"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.musiconline.metachanged"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.musiconline.name_state"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.music.current_device"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.android.music.remote_volume"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 766
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "meizu.intent.recent.close"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "com.meizu.theme.change"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "notify.launcher.date.change"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.TIME_SET"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 770
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "meizu.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->c:Landroid/content/Context;

    .line 775
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->c:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v14, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 778
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->pkgFilter:Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->pkgFilter:Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->pkgFilter:Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 781
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->pkgFilter:Landroid/content/IntentFilter;

    const-string v13, "package"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 782
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->c:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v14, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->pkgFilter:Landroid/content/IntentFilter;

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 785
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 786
    .local v5, "mFilter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    const-string v12, "package"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 788
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->c:Landroid/content/Context;

    new-instance v13, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;

    invoke-direct {v13, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    invoke-virtual {v12, v13, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 834
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 835
    .local v6, "mediaFilter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    const-string v12, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    const-string v12, "file"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 838
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->c:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mExternalMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 840
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->createAnimations()V

    .line 842
    new-instance v12, Lcom/android/systemui/mzrecent/RecentTasksLoader;

    invoke-direct {v12, v0}, Lcom/android/systemui/mzrecent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    .line 843
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    invoke-virtual {v12, p0}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->setRecentDrawer(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    .line 844
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    iget-object v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->setCachedIconsAndLabels(Ljava/util/HashMap;)V

    .line 845
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v13, "input_method"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 848
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findAllResolveInfo()V

    .line 849
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initialFilterApps()V

    .line 853
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090010

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 855
    .local v9, "srcColor":I
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v9, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 859
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v13, "appops"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAOM:Landroid/app/AppOpsManager;

    .line 861
    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v13, "activity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager;

    iput-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAM:Landroid/app/ActivityManager;

    .line 868
    return-void

    .line 733
    .end local v5    # "mFilter":Landroid/content/IntentFilter;
    .end local v6    # "mediaFilter":Landroid/content/IntentFilter;
    .end local v9    # "srcColor":I
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/mzrecent/WorkspaceItem;->removeViewAt(I)V

    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f0e0141

    const/4 v7, 0x0

    const/4 v6, -0x3

    const/4 v5, 0x1

    .line 2746
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2777
    :goto_0
    return v5

    .line 2748
    :cond_0
    invoke-virtual {p0, v7, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setDeleteLayout(IZ)V

    .line 2749
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setMusicLayout(I)V

    .line 2750
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/mzrecent/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 2753
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2754
    .local v1, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    iput-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2755
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    .line 2756
    iput-boolean v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsDraging:Z

    .line 2757
    iget-object v2, v1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isAppLocked(Ljava/lang/String;)Z

    move-result v0

    .line 2759
    .local v0, "currentTaskLocked":Z
    if-eqz v0, :cond_1

    .line 2760
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recent_lock_saved:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2762
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2763
    sget-object v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLockedApps:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2764
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    const-string v4, "unlock"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/SystemUIMobEventUtils;->collectLockOrUnlockApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2766
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recent_lock_saved:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2768
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020339

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2770
    sget-object v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLockedApps:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2771
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    const-string v4, "lock"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/SystemUIMobEventUtils;->collectLockOrUnlockApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 0
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 4189
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 2725
    if-eqz p3, :cond_0

    .line 2726
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setBrightness(IZ)V

    .line 2728
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x1

    .line 2732
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFromUserTouch:Z

    .line 2733
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 2734
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x0

    .line 2738
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFromUserTouch:Z

    .line 2739
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 2740
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setBrightness(IZ)V

    .line 2741
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectManualAdjustLight(Landroid/content/Context;)V

    .line 2742
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4547
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4558
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 4549
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_1
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1    # "v":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setColorFilter(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    .line 4547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1821
    invoke-super {p0, p1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->onWindowFocusChanged(Z)V

    .line 1822
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    if-eqz v0, :cond_0

    .line 1828
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1833
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLastFocus:Z

    if-eq v0, p1, :cond_2

    .line 1834
    iput-boolean p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLastFocus:Z

    .line 1837
    :cond_2
    return-void
.end method

.method public performOtherFavorAnim(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    .line 1421
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1422
    .local v6, "translateAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/TranslateAnimation;>;"
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 1423
    .local v4, "loc":[I
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 1424
    .local v5, "loc2":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    rsub-int/lit8 v7, p1, 0x5

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 1426
    const-string v7, "anim"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "i = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pre left = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    add-int v10, p1, v3

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", next left = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    add-int v10, p1, v3

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    add-int v8, p1, v3

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1432
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    add-int v8, p1, v3

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1434
    iget v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 1435
    :cond_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x1

    aget v9, v4, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1439
    .local v1, "animation":Landroid/view/animation/TranslateAnimation;
    :goto_1
    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1440
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1437
    .end local v1    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x0

    aget v9, v5, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "animation":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    .line 1443
    .end local v1    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    if-ltz p1, :cond_7

    const/4 v7, 0x4

    if-ge p1, v7, :cond_7

    .line 1444
    add-int/lit8 v3, p1, 0x1

    :goto_2
    const/4 v7, 0x5

    if-ge v3, v7, :cond_8

    .line 1445
    const/4 v7, 0x4

    if-ne v3, v7, :cond_6

    .line 1449
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 1451
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, p1

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1452
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, p1

    invoke-virtual {p0, v7}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetViewState(Landroid/view/View;)V

    .line 1454
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, p1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1455
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1457
    iget v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 1458
    :cond_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    rsub-int/lit8 v7, p1, 0x5

    iget-object v8, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1476
    .local v2, "extraAnim":Landroid/view/animation/TranslateAnimation;
    :goto_3
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1478
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, p1

    const v8, 0x7f020338

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setFavorContentBackgroundResource(Landroid/widget/RelativeLayout;I)V

    .line 1480
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, p1

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1483
    .end local v2    # "extraAnim":Landroid/view/animation/TranslateAnimation;
    :cond_4
    sub-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    .line 1485
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    new-instance v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$10;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1505
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, v3

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1506
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, v3

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1444
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1467
    :cond_5
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    rsub-int/lit8 v7, p1, 0x5

    iget-object v8, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x0

    aget v9, v4, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v2    # "extraAnim":Landroid/view/animation/TranslateAnimation;
    goto :goto_3

    .line 1508
    .end local v2    # "extraAnim":Landroid/view/animation/TranslateAnimation;
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, v3

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1509
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v8, v7, v3

    sub-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/animation/Animation;

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 1515
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetViewState(Landroid/view/View;)V

    .line 1516
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1519
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    const v8, 0x7f020338

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setFavorContentBackgroundResource(Landroid/widget/RelativeLayout;I)V

    .line 1521
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1527
    .restart local v1    # "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1528
    new-instance v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$11;

    invoke-direct {v7, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$11;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1550
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1552
    .end local v1    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_8
    return-void
.end method

.method protected prepareTransitioner(Lcom/android/systemui/mzrecent/MzCellLayout;)V
    .locals 0
    .param p1, "cell"    # Lcom/android/systemui/mzrecent/MzCellLayout;

    .prologue
    .line 4613
    return-void
.end method

.method public reLayout(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 4388
    return-void
.end method

.method public reLayout(II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 4392
    return-void
.end method

.method protected refreshFavors()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 1368
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1371
    .local v0, "favorCount":I
    if-lez v0, :cond_1

    .line 1372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_1

    if-ge v1, v0, :cond_1

    .line 1373
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1374
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 1375
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetViewState(Landroid/view/View;)V

    .line 1378
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setFavorContentBackgroundDrawable(Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;)V

    .line 1380
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1381
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1382
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1372
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1387
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-ge v0, v7, :cond_3

    .line 1388
    move v3, v0

    .local v3, "j":I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 1389
    if-ne v3, v0, :cond_2

    .line 1390
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetViewState(Landroid/view/View;)V

    .line 1391
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v3

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1392
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v3

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1394
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v3

    const v5, 0x7f020338

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setFavorContentBackgroundResource(Landroid/widget/RelativeLayout;I)V

    .line 1396
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1388
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1398
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1400
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4, v8}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setFavorContentBackgroundDrawable(Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;)V

    .line 1401
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v3

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 1405
    .end local v3    # "j":I
    :cond_3
    return-void
.end method

.method protected reloadButtons(Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2090
    .local p1, "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksInfo:Ljava/util/List;

    .line 2105
    .local v15, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v7, 0x4

    .line 2106
    .local v7, "index":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    .line 2111
    .local v12, "numTasks":I
    move-object/from16 v11, p1

    .line 2112
    .local v11, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-gtz v22, :cond_1

    .line 2281
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2116
    const/4 v3, 0x0

    .line 2117
    .local v3, "homeInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 2118
    .local v14, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_2

    .line 2119
    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "android.intent.category.HOME"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 2122
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v12, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_12

    .line 2123
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2124
    .local v18, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/systemui/mzrecent/TaskDescription;->intent:Landroid/content/Intent;

    .line 2125
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_4

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2122
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2135
    :cond_4
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 2136
    .local v13, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2137
    .local v2, "component":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/mzrecent/TaskDescription;->getNewIntent()Landroid/content/Intent;

    move-result-object v22

    if-eqz v22, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/mzrecent/TaskDescription;->getNewIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 2138
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/mzrecent/TaskDescription;->getNewIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2140
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->getFirstTask()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 2141
    .local v20, "topPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->getFirstTask()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 2142
    .local v19, "topComponent":Ljava/lang/String;
    const-string v22, "com.android.settings"

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 2144
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSettingTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 2146
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2149
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 2150
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2156
    :cond_7
    const-string v22, "com.android.quicksearchbox"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    const-string v22, "com.android.phone"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    const-string v22, "com.android.launcher3"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2161
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    if-eqz v2, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 2162
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 2164
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2169
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    sget-object v22, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mGallery3dPkg:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mComponentName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_a
    sget-object v22, Lcom/android/systemui/mzrecent/RecentTasksLoader;->pkgEasyLauncher:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mComponentName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2179
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mComponentName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    move/from16 v16, v7

    .line 2186
    .local v16, "rindex":I
    move-object/from16 v17, v18

    .line 2190
    .local v17, "rtaskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_c

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByArrayList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2256
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 2198
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild1Add:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    .line 2200
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->addWorkspace1()V

    .line 2218
    :cond_d
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    aget-object v10, v22, v16

    .line 2219
    .local v10, "lr":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v22, v0

    aget-object v21, v22, v16

    .line 2220
    .local v21, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    move-object/from16 v22, v0

    aget-object v6, v22, v16

    .line 2221
    .local v6, "ig":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    move-object/from16 v22, v0

    aget-object v9, v22, v16

    .line 2223
    .local v9, "lock":Landroid/widget/ImageView;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/mzrecent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2224
    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d00a0

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2225
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetViewState(Landroid/view/View;)V

    .line 2227
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2229
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2235
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 2236
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 2238
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/mzrecent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2245
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isAppLocked(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 2246
    const v22, 0x7f020339

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2251
    .end local v6    # "ig":Landroid/widget/ImageView;
    .end local v9    # "lock":Landroid/widget/ImageView;
    .end local v10    # "lr":Landroid/widget/LinearLayout;
    .end local v21    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v22

    goto/16 :goto_3

    .line 2202
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild2Add:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 2204
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->addWorkspace2()V

    goto/16 :goto_4

    .line 2206
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild3Add:Z

    move/from16 v22, v0

    if-nez v22, :cond_10

    .line 2207
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->addWorkspace3()V

    goto/16 :goto_4

    .line 2208
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x4

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild4Add:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 2209
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->addWorkspace4()V

    goto/16 :goto_4

    .line 2248
    .restart local v6    # "ig":Landroid/widget/ImageView;
    .restart local v9    # "lock":Landroid/widget/ImageView;
    .restart local v10    # "lr":Landroid/widget/LinearLayout;
    .restart local v21    # "tv":Landroid/widget/TextView;
    :cond_11
    const/16 v22, 0x0

    :try_start_1
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 2264
    .end local v2    # "component":Ljava/lang/String;
    .end local v6    # "ig":Landroid/widget/ImageView;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "lock":Landroid/widget/ImageView;
    .end local v10    # "lr":Landroid/widget/LinearLayout;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v16    # "rindex":I
    .end local v17    # "rtaskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v18    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v19    # "topComponent":Ljava/lang/String;
    .end local v20    # "topPkg":Ljava/lang/String;
    .end local v21    # "tv":Landroid/widget/TextView;
    :cond_12
    move v5, v7

    .line 2265
    .local v5, "idex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->removeWorkspace(I)V

    .line 2267
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->NUM_BUTTONS:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_14

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    if-eqz v22, :cond_13

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2267
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2276
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBuildLayersRunnable:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/mzrecent/WorkspaceItem;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method protected reloadFirstPage(Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1930
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mComponentName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1932
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSettingTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1939
    .local v3, "am":Landroid/app/ActivityManager;
    const/4 v10, 0x0

    .line 1942
    .local v10, "index":I
    move-object/from16 v14, p1

    .line 1943
    .local v14, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-gtz v22, :cond_1

    .line 2073
    :cond_0
    :goto_0
    return-void

    .line 1946
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1947
    .local v15, "numTasks":I
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/mzrecent/TaskDescription;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTopPkg:Ljava/lang/String;

    .line 1950
    const/4 v7, 0x0

    .line 1951
    .local v7, "homeInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 1952
    .local v17, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_2

    .line 1953
    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "android.intent.category.HOME"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 1957
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v15, :cond_d

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v10, v0, :cond_d

    .line 1958
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 1959
    .local v18, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/systemui/mzrecent/TaskDescription;->intent:Landroid/content/Intent;

    .line 1960
    .local v11, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_4

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1957
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1970
    :cond_4
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 1971
    .local v16, "pkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1972
    .local v4, "component":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/mzrecent/TaskDescription;->getNewIntent()Landroid/content/Intent;

    move-result-object v22

    if-eqz v22, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/mzrecent/TaskDescription;->getNewIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 1973
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/mzrecent/TaskDescription;->getNewIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1975
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->getFirstTask()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1976
    .local v20, "topPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->getFirstTask()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 1977
    .local v19, "topComponent":Ljava/lang/String;
    const-string v22, "com.android.settings"

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1979
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSettingTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 1981
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 1984
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1985
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 1990
    :cond_7
    const-string v22, "com.android.quicksearchbox"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    const-string v22, "com.android.phone"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    const-string v22, "com.android.launcher3"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 1994
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    if-eqz v4, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1995
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFiterAppListTopScreen:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1997
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    .line 2001
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    sget-object v22, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mGallery3dPkg:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mComponentName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_a
    sget-object v22, Lcom/android/systemui/mzrecent/RecentTasksLoader;->pkgEasyLauncher:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mComponentName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2011
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mComponentName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2016
    move v6, v10

    .line 2022
    .local v6, "findex":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    aget-object v13, v22, v6

    .line 2023
    .local v13, "lr":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v22, v0

    aget-object v21, v22, v6

    .line 2024
    .local v21, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    move-object/from16 v22, v0

    aget-object v9, v22, v6

    .line 2025
    .local v9, "ig":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLock:[Landroid/widget/ImageView;

    move-object/from16 v22, v0

    aget-object v12, v22, v6

    .line 2027
    .local v12, "lock":Landroid/widget/ImageView;
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/mzrecent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2028
    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d00a0

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2032
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetViewState(Landroid/view/View;)V

    .line 2034
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2036
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2037
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 2038
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 2040
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/mzrecent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2042
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isAppLocked(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 2043
    const v22, 0x7f020339

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2051
    .end local v9    # "ig":Landroid/widget/ImageView;
    .end local v12    # "lock":Landroid/widget/ImageView;
    .end local v13    # "lr":Landroid/widget/LinearLayout;
    .end local v21    # "tv":Landroid/widget/TextView;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2045
    .restart local v9    # "ig":Landroid/widget/ImageView;
    .restart local v12    # "lock":Landroid/widget/ImageView;
    .restart local v13    # "lr":Landroid/widget/LinearLayout;
    .restart local v21    # "tv":Landroid/widget/TextView;
    :cond_c
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2047
    .end local v9    # "ig":Landroid/widget/ImageView;
    .end local v12    # "lock":Landroid/widget/ImageView;
    .end local v13    # "lr":Landroid/widget/LinearLayout;
    .end local v21    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v5

    .line 2048
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2055
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "findex":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v18    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v19    # "topComponent":Ljava/lang/String;
    .end local v20    # "topPkg":Ljava/lang/String;
    :cond_d
    if-gtz v10, :cond_e

    .line 2056
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->showNoneRecentTasks()V

    goto/16 :goto_0

    .line 2058
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->hideFirstRecentPageNoneItem()V

    .line 2059
    :goto_4
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v10, v0, :cond_0

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    if-eqz v22, :cond_f

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mImageViews:[Landroid/widget/ImageView;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2059
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_4
.end method

.method protected removeEmptyCellLayout()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 3332
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v11}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildCount()I

    move-result v0

    .line 3333
    .local v0, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3334
    .local v6, "removeArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3336
    .local v7, "removeArrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 3338
    .local v1, "currentPage":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_1

    .line 3339
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v11, v3}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 3341
    .local v10, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 3343
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 3346
    .local v8, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-nez v8, :cond_0

    .line 3347
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3348
    move v1, v3

    .line 3338
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3351
    .end local v5    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v8    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v10    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v11}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getCurrentPage()I

    move-result v2

    .line 3353
    .local v2, "currentPageWorkspace":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3354
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 3355
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 3356
    .local v9, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_2

    .line 3357
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v11, v12}, Lcom/android/systemui/mzrecent/WorkspaceItem;->snapToPage(I)V

    .line 3359
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v11, v9}, Lcom/android/systemui/mzrecent/WorkspaceItem;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 3354
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3362
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 3363
    .restart local v9    # "view":Landroid/view/View;
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v11, v9}, Lcom/android/systemui/mzrecent/WorkspaceItem;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 3365
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    const/4 v11, 0x1

    if-ne v1, v11, :cond_6

    .line 3366
    iput-boolean v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild1Add:Z

    .line 3369
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    iget-object v12, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v12}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getCurrentPage()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/mzrecent/WorkspaceItem;->snapToPage(I)V

    .line 3374
    iput-boolean v13, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByAnimationing:Z

    .line 3375
    return-void
.end method

.method public removeFavorApp(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4200
    if-eqz p1, :cond_0

    .line 4201
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 4204
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 4205
    const/4 v2, 0x0

    .line 4206
    .local v2, "isPkgIncluded":Z
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 4207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 4208
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4212
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4213
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->saveFavorChang(Z)V

    .line 4214
    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->performOtherFavorAnim(I)V

    .line 4222
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "isPkgIncluded":Z
    :cond_0
    return-void

    .line 4207
    .restart local v0    # "i":I
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "isPkgIncluded":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeTaskPolicy(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4789
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 4790
    return-void
.end method

.method protected removeWorkspace(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2398
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    .line 2400
    .local v2, "workspace":Lcom/android/systemui/mzrecent/WorkspaceItem;
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    if-gt p1, v3, :cond_4

    .line 2401
    invoke-virtual {v2, v7}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2402
    invoke-virtual {v2, v7}, Lcom/android/systemui/mzrecent/WorkspaceItem;->removeViewAt(I)V

    .line 2403
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild1Add:Z

    .line 2405
    :cond_0
    invoke-virtual {v2, v5}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2406
    invoke-virtual {v2, v5}, Lcom/android/systemui/mzrecent/WorkspaceItem;->removeViewAt(I)V

    .line 2407
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild2Add:Z

    .line 2409
    :cond_1
    invoke-virtual {v2, v6}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2410
    invoke-virtual {v2, v6}, Lcom/android/systemui/mzrecent/WorkspaceItem;->removeViewAt(I)V

    .line 2411
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild3Add:Z

    .line 2414
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v3, v4}, Lcom/android/systemui/mzrecent/WorkspaceItem;->snapToPage(I)V

    .line 2439
    :cond_3
    :goto_0
    return-void

    .line 2415
    :cond_4
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    if-le p1, v3, :cond_6

    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v3, v3, 0x2

    if-gt p1, v3, :cond_6

    .line 2416
    const/4 v1, 0x0

    .line 2417
    .local v1, "remove":Z
    invoke-virtual {v2, v5}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2418
    invoke-virtual {v2, v5}, Lcom/android/systemui/mzrecent/WorkspaceItem;->removeViewAt(I)V

    .line 2419
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild2Add:Z

    .line 2420
    const/4 v1, 0x1

    .line 2422
    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getCurrentPage()I

    move-result v0

    .line 2423
    .local v0, "currentScreen":I
    if-eqz v1, :cond_3

    if-ne v0, v5, :cond_3

    .line 2424
    invoke-virtual {v2, v7}, Lcom/android/systemui/mzrecent/WorkspaceItem;->snapToPage(I)V

    goto :goto_0

    .line 2426
    .end local v0    # "currentScreen":I
    .end local v1    # "remove":Z
    :cond_6
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v3, v3, 0x2

    if-le p1, v3, :cond_3

    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    mul-int/lit8 v3, v3, 0x3

    if-gt p1, v3, :cond_3

    .line 2427
    const/4 v1, 0x0

    .line 2428
    .restart local v1    # "remove":Z
    invoke-virtual {v2, v6}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2429
    invoke-virtual {v2, v6}, Lcom/android/systemui/mzrecent/WorkspaceItem;->removeViewAt(I)V

    .line 2430
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isChild3Add:Z

    .line 2431
    const/4 v1, 0x1

    .line 2433
    :cond_7
    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getCurrentPage()I

    move-result v0

    .line 2434
    .restart local v0    # "currentScreen":I
    if-eqz v1, :cond_3

    if-ne v0, v6, :cond_3

    .line 2435
    invoke-virtual {v2, v5}, Lcom/android/systemui/mzrecent/WorkspaceItem;->snapToPage(I)V

    goto :goto_0
.end method

.method protected requestWorkspace()V
    .locals 6

    .prologue
    .line 3113
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v4}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildCount()I

    move-result v1

    .line 3116
    .local v1, "count":I
    const/4 v3, 0x0

    .line 3118
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3119
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v4, v2}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3121
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mGroup:Landroid/view/ViewGroup;

    if-ne v0, v4, :cond_1

    .line 3122
    move v3, v2

    .line 3127
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->treeViewCellLayout(IIZ)V

    .line 3129
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animationStandByView()V

    .line 3131
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->removeEmptyCellLayout()V

    .line 3132
    return-void

    .line 3118
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public resetInitFlag()V
    .locals 1

    .prologue
    .line 4383
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    .line 4384
    return-void
.end method

.method protected resetViewState(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3871
    if-eqz p1, :cond_0

    .line 3872
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3873
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3875
    :cond_0
    return-void
.end method

.method public saveFavorChang(Z)V
    .locals 8
    .param p1, "write"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1329
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1332
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1333
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavorApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1334
    .local v1, "pkgInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    const-string v3, " & "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1344
    .end local v1    # "pkgInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPreFavors:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPreFavors:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1345
    :cond_2
    if-eqz p1, :cond_4

    .line 1346
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "recent_favor_saved:"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1349
    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    if-eq v3, v6, :cond_3

    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurRotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 1350
    :cond_3
    sput v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    .line 1351
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1352
    sput v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLandNeedInitFlag:I

    .line 1362
    :cond_4
    :goto_2
    const-string v3, "RecentSlidingDrawer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveFavorChang, mPortNeedInitFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLandNeedInitFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLandNeedInitFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1355
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTmpFavors:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1356
    sput v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    .line 1358
    :cond_6
    sput v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLandNeedInitFlag:I

    goto :goto_2
.end method

.method protected sendRuestInfo()V
    .locals 3

    .prologue
    .line 3514
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3515
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.music.COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3516
    const-string v1, "command"

    const-string v2, "request_info"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3517
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3518
    return-void
.end method

.method public setBlurView(Landroid/view/View;)V
    .locals 2
    .param p1, "blur"    # Landroid/view/View;

    .prologue
    .line 4649
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    .line 4650
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4651
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;

    invoke-direct {v1, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 4676
    :cond_0
    return-void
.end method

.method protected setBrightness(IZ)V
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    .line 3844
    iget v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mScreenBrightnessDim:I

    rsub-int v1, v2, 0xff

    .line 3845
    .local v1, "range":I
    mul-int v2, p1, v1

    div-int/lit16 v2, v2, 0x2710

    iget v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mScreenBrightnessDim:I

    add-int p1, v2, v3

    .line 3848
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 3850
    .local v0, "power":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 3851
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 3853
    :cond_0
    if-eqz p2, :cond_1

    .line 3854
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3857
    :cond_1
    iput p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurBrightness:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3862
    .end local v0    # "power":Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 3860
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setColorFilter(Landroid/widget/LinearLayout;Z)V
    .locals 3
    .param p1, "item"    # Landroid/widget/LinearLayout;
    .param p2, "set"    # Z

    .prologue
    .line 4526
    if-eqz p1, :cond_0

    .line 4527
    const v2, 0x7f0e003c

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4528
    .local v1, "image":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 4529
    const/4 v0, 0x0

    .line 4530
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4531
    if-eqz v0, :cond_0

    .line 4532
    if-eqz p2, :cond_1

    .line 4533
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4534
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4542
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 4536
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "image":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 4537
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setColorFilter(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 4520
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    if-eqz v0, :cond_0

    .line 4521
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setColorFilter(Z)V

    .line 4523
    :cond_0
    return-void
.end method

.method public setDeleteBackgroundNomal(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 3489
    return-void
.end method

.method public setDeleteLayout(IZ)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 3481
    return-void
.end method

.method public setDragLayer(Lcom/android/systemui/mzrecent/MzDragLayer;)V
    .locals 2
    .param p1, "dragLayer"    # Lcom/android/systemui/mzrecent/MzDragLayer;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDragLayer:Lcom/android/systemui/mzrecent/MzDragLayer;

    .line 933
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDragLayer:Lcom/android/systemui/mzrecent/MzDragLayer;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/MzDragLayer;->setDragController(Lcom/android/systemui/mzrecent/DragController;)V

    .line 934
    return-void
.end method

.method public setFavorContentBackgroundDrawable(Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/RelativeLayout;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1415
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1416
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1418
    :cond_0
    return-void
.end method

.method public setFavorContentBackgroundResource(Landroid/widget/RelativeLayout;I)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/RelativeLayout;
    .param p2, "res"    # I

    .prologue
    .line 1408
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1409
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1411
    :cond_0
    return-void
.end method

.method protected setFavorSelectDialogRotation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->setRotation(I)V

    .line 1243
    :cond_0
    return-void
.end method

.method protected setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 3865
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutomaticMode:Z

    .line 3866
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3868
    return-void

    .line 3865
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMusicLayout(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 3485
    return-void
.end method

.method public setNeedInitFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 4379
    sput p1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    .line 4380
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1184
    return-void
.end method

.method protected setTaskItemRotation()V
    .locals 0

    .prologue
    .line 4567
    return-void
.end method

.method public setTextVisiable(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # I

    .prologue
    .line 2781
    const v1, 0x7f0e0125

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2782
    .local v0, "textView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2783
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2785
    :cond_0
    return-void
.end method

.method protected treeViewCellLayout(IIZ)V
    .locals 33
    .param p1, "prev"    # I
    .param p2, "next"    # I
    .param p3, "anim"    # Z

    .prologue
    .line 3201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 3202
    .local v6, "cellPrevCellLayout":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 3204
    .local v5, "cellNextCellLayout":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 3318
    :cond_0
    :goto_0
    return-void

    .line 3207
    :cond_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 3208
    .local v9, "childCount":I
    const/4 v11, 0x0

    .line 3209
    .local v11, "currentDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    const/4 v12, 0x0

    .line 3211
    .local v12, "currentLayout":Landroid/widget/LinearLayout;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v9, :cond_3

    .line 3212
    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 3214
    .local v7, "child":Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 3216
    .local v23, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-nez v23, :cond_2

    .line 3211
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3220
    :cond_2
    move-object/from16 v11, v23

    .line 3221
    move-object v12, v7

    .line 3226
    .end local v7    # "child":Landroid/widget/LinearLayout;
    .end local v23    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_3
    if-eqz v11, :cond_5

    .line 3227
    const v29, 0x7f0e003c

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 3228
    .local v27, "view":Landroid/widget/ImageView;
    const v29, 0x7f0e0125

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 3230
    .local v25, "textView":Landroid/widget/TextView;
    const v29, 0x7f0e0141

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 3231
    .local v18, "lock":Landroid/widget/ImageView;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3232
    .local v13, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 3234
    .local v20, "lockDrawable":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v29, v9, -0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 3237
    .local v16, "lastLayout":Landroid/widget/LinearLayout;
    if-eqz v16, :cond_5

    .line 3238
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetViewState(Landroid/view/View;)V

    .line 3239
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 3241
    const v29, 0x7f0e0142

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 3243
    .local v17, "layout2":Landroid/widget/LinearLayout;
    const v29, 0x7f0e003c

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 3245
    .local v28, "view2":Landroid/widget/ImageView;
    const v29, 0x7f0e0125

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 3247
    .local v26, "textView2":Landroid/widget/TextView;
    const v29, 0x7f0e0141

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 3250
    .local v22, "lockPre":Landroid/widget/ImageView;
    if-eqz v13, :cond_5

    .line 3251
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3252
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 3255
    .local v10, "currentConfig":Landroid/content/res/Configuration;
    move-object/from16 v23, v11

    .line 3256
    .restart local v23    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz p3, :cond_4

    .line 3257
    const/4 v4, 0x0

    .line 3258
    .local v4, "animation":Landroid/view/animation/TranslateAnimation;
    iget v0, v10, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 3259
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3266
    .restart local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    :goto_2
    const-wide/16 v30, 0xc8

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3267
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3270
    .end local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/mzrecent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3271
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3273
    const/16 v29, 0x4

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3274
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 3275
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3276
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3277
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3283
    .end local v10    # "currentConfig":Landroid/content/res/Configuration;
    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "lastLayout":Landroid/widget/LinearLayout;
    .end local v17    # "layout2":Landroid/widget/LinearLayout;
    .end local v18    # "lock":Landroid/widget/ImageView;
    .end local v20    # "lockDrawable":Landroid/graphics/drawable/Drawable;
    .end local v22    # "lockPre":Landroid/widget/ImageView;
    .end local v23    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v25    # "textView":Landroid/widget/TextView;
    .end local v26    # "textView2":Landroid/widget/TextView;
    .end local v27    # "view":Landroid/widget/ImageView;
    .end local v28    # "view2":Landroid/widget/ImageView;
    :cond_5
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_9

    .line 3284
    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 3286
    .restart local v7    # "child":Landroid/widget/LinearLayout;
    const v29, 0x7f0e003c

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 3287
    .restart local v27    # "view":Landroid/widget/ImageView;
    const v29, 0x7f0e0125

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 3288
    .restart local v25    # "textView":Landroid/widget/TextView;
    const v29, 0x7f0e0141

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 3290
    .restart local v18    # "lock":Landroid/widget/ImageView;
    add-int/lit8 v29, v15, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 3292
    .local v8, "child2":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_6

    .line 3293
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 3295
    .local v24, "taskDescription2":Lcom/android/systemui/mzrecent/TaskDescription;
    if-nez v24, :cond_8

    .line 3283
    .end local v24    # "taskDescription2":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_6
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 3262
    .end local v7    # "child":Landroid/widget/LinearLayout;
    .end local v8    # "child2":Landroid/widget/LinearLayout;
    .restart local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    .restart local v10    # "currentConfig":Landroid/content/res/Configuration;
    .restart local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "lastLayout":Landroid/widget/LinearLayout;
    .restart local v17    # "layout2":Landroid/widget/LinearLayout;
    .restart local v20    # "lockDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v22    # "lockPre":Landroid/widget/ImageView;
    .restart local v23    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .restart local v26    # "textView2":Landroid/widget/TextView;
    .restart local v28    # "view2":Landroid/widget/ImageView;
    :cond_7
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_2

    .line 3297
    .end local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v10    # "currentConfig":Landroid/content/res/Configuration;
    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "lastLayout":Landroid/widget/LinearLayout;
    .end local v17    # "layout2":Landroid/widget/LinearLayout;
    .end local v20    # "lockDrawable":Landroid/graphics/drawable/Drawable;
    .end local v22    # "lockPre":Landroid/widget/ImageView;
    .end local v23    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v26    # "textView2":Landroid/widget/TextView;
    .end local v28    # "view2":Landroid/widget/ImageView;
    .restart local v7    # "child":Landroid/widget/LinearLayout;
    .restart local v8    # "child2":Landroid/widget/LinearLayout;
    .restart local v24    # "taskDescription2":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_8
    const v29, 0x7f0e003c

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 3298
    .restart local v28    # "view2":Landroid/widget/ImageView;
    const v29, 0x7f0e0125

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 3299
    .restart local v26    # "textView2":Landroid/widget/TextView;
    const v29, 0x7f0e0141

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 3300
    .local v19, "lock2":Landroid/widget/ImageView;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 3301
    .local v14, "drawable2":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 3303
    .local v21, "lockDrawable2":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 3304
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3305
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3306
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/mzrecent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3307
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3309
    const/16 v29, 0x4

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3310
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 3311
    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3312
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 3317
    .end local v7    # "child":Landroid/widget/LinearLayout;
    .end local v8    # "child2":Landroid/widget/LinearLayout;
    .end local v14    # "drawable2":Landroid/graphics/drawable/Drawable;
    .end local v18    # "lock":Landroid/widget/ImageView;
    .end local v19    # "lock2":Landroid/widget/ImageView;
    .end local v21    # "lockDrawable2":Landroid/graphics/drawable/Drawable;
    .end local v24    # "taskDescription2":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v25    # "textView":Landroid/widget/TextView;
    .end local v26    # "textView2":Landroid/widget/TextView;
    .end local v27    # "view":Landroid/widget/ImageView;
    .end local v28    # "view2":Landroid/widget/ImageView;
    :cond_9
    add-int/lit8 v29, p2, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->treeViewCellLayout(IIZ)V

    goto/16 :goto_0
.end method

.method protected updateAutoAdjustMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1034
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoAdjust:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 1035
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1038
    .local v1, "value":I
    if-ne v1, v5, :cond_1

    .line 1043
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setMode(I)V

    .line 1044
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoState:Landroid/widget/ImageView;

    const v3, 0x7f020046

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1060
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectAdjustAutoMode(Landroid/content/Context;)V

    .line 1065
    .end local v1    # "value":I
    :cond_0
    :goto_1
    return-void

    .line 1054
    .restart local v1    # "value":I
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setMode(I)V

    .line 1055
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAutoState:Landroid/widget/ImageView;

    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1062
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateConfigure()V
    .locals 2

    .prologue
    .line 1758
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1760
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPreviousConfigOrientation:I

    .line 1761
    return-void
.end method

.method protected updateData()V
    .locals 18

    .prologue
    .line 3055
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFinalindex:I

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCount:I

    if-ge v5, v14, :cond_3

    .line 3056
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3057
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    if-ne v2, v14, :cond_1

    .line 3055
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3059
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 3060
    .local v9, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz v9, :cond_0

    .line 3063
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mGroup:Landroid/view/ViewGroup;

    add-int/lit8 v15, v5, -0x1

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3064
    .local v3, "childView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 3065
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    if-ne v3, v14, :cond_2

    .line 3066
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->resetViewState(Landroid/view/View;)V

    .line 3067
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 3070
    :cond_2
    invoke-virtual {v3, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3071
    const v14, 0x7f0e003c

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 3072
    .local v12, "view":Landroid/widget/ImageView;
    const v14, 0x7f0e0125

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3073
    .local v10, "textView":Landroid/widget/TextView;
    const v14, 0x7f0e0141

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 3074
    .local v6, "lock":Landroid/widget/ImageView;
    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3075
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 3076
    .local v7, "lockDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 3077
    const v14, 0x7f0e003c

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 3079
    .local v13, "view2":Landroid/widget/ImageView;
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3080
    const v14, 0x7f0e0141

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 3082
    .local v8, "lockPre":Landroid/widget/ImageView;
    const v14, 0x7f0e0125

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 3084
    .local v11, "textView2":Landroid/widget/TextView;
    invoke-virtual {v9}, Lcom/android/systemui/mzrecent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3085
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3086
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 3088
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3089
    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 3091
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3092
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3093
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 3099
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childView":Landroid/view/View;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "lock":Landroid/widget/ImageView;
    .end local v7    # "lockDrawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "lockPre":Landroid/widget/ImageView;
    .end local v9    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "textView2":Landroid/widget/TextView;
    .end local v12    # "view":Landroid/widget/ImageView;
    .end local v13    # "view2":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->requestWorkspace()V

    .line 3100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x3f3

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3101
    return-void
.end method

.method public updateFavorSettings([Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "favors"    # [Ljava/lang/String;
    .param p2, "ignoreIndex"    # I

    .prologue
    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1741
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 1742
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1743
    if-eq v0, p2, :cond_0

    .line 1744
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "recent_favor_saved:"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1754
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
