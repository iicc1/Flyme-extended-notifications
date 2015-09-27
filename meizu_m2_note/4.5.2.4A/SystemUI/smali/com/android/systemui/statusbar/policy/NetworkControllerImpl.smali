.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/NetworkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;
    }
.end annotation


# static fields
.field private static MEIZU_LABEL:Ljava/lang/String;


# instance fields
.field mAirplaneIconId:I

.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field private mCarrier1:Lcom/android/systemui/statusbar/CarrierLabel;

.field private mCarrier2:Lcom/android/systemui/statusbar/CarrierLabel;

.field private mCarrierDivider:Landroid/view/View;

.field private mCarrierList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/CarrierLabel;",
            ">;"
        }
    .end annotation
.end field

.field mCarrierName:[Ljava/lang/String;

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field mConnectionRateViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/ConnectionRateView;",
            ">;"
        }
    .end annotation
.end field

.field mContentDescriptionDataType:[Ljava/lang/String;

.field mContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDataActivity:[I

.field mDataAndWifiStacked:Z

.field mDataConnected:[Z

.field mDataDirectionIconId:[I

.field mDataIconList:[[I

.field mDataNetType:[I

.field mDataSignalIconId:[I

.field mDataState:[I

.field mDataTypeIconId:[I

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoWifiLevel:I

.field private mDividerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mEmergencyLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mGeminiSimNum:I

.field private mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsLidClosed:Z

.field private mIsWimaxEnabled:Z

.field private mLastAirplaneMode:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field mLastDataConnected:[Z

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataTypeIconId:[I

.field private mLastLocale:Ljava/util/Locale;

.field mLastPhoneSignalIconId:[I

.field mLastSignalLevel:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field mLockedReason:[Ljava/lang/String;

.field mMobileActivityIconId:[I

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkName:[Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mPhoneSignalIconId:[I

.field mPhoneState:[I

.field mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mServiceState:[Landroid/telephony/ServiceState;

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:[Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mStateExtra:[Ljava/lang/String;

.field private mStatusLabelDividerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusViewGemini:Landroid/view/ViewGroup;

.field private mStatusViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/CarrierLabel;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonymanager:Landroid/telephony/TelephonyManager;

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiConnecting:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->MEIZU_LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 193
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 115
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 116
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 117
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 118
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    .line 131
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 132
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 133
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 134
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    .line 137
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 138
    const v6, 0xa020341

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 142
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 143
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 144
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 145
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    .line 146
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 147
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    .line 148
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 149
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 153
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 154
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 156
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    .line 159
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 160
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 162
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 163
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 167
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 168
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 171
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionRateViews:Ljava/util/ArrayList;

    .line 172
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    .line 173
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 176
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 177
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    .line 178
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 179
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 180
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 183
    const-string v6, ""

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 187
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    .line 2805
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrier1:Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2806
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrier2:Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2807
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierDivider:Landroid/view/View;

    .line 2887
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsLidClosed:Z

    .line 2888
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewGemini:Landroid/view/ViewGroup;

    .line 2889
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierList:Ljava/util/ArrayList;

    .line 2890
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDividerList:Ljava/util/ArrayList;

    .line 2891
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewList:Ljava/util/ArrayList;

    .line 2892
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusLabelDividerList:Ljava/util/ArrayList;

    .line 194
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 197
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 199
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 201
    const v6, 0x7f0a0004

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 202
    const v6, 0x7f0a0005

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 203
    const v6, 0xa0d0006

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 211
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SIMHelper;->getNumOfSim(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    .line 212
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    .line 213
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0b003d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    .line 214
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0xa0a00c7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    .line 217
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Landroid/telephony/SignalStrength;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 218
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Landroid/telephony/ServiceState;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    .line 219
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:[I

    .line 220
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    .line 221
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:[I

    .line 222
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:[Z

    .line 223
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 224
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:[I

    .line 225
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    .line 226
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 227
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:[I

    .line 228
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:[Ljava/lang/String;

    .line 229
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:[Ljava/lang/String;

    .line 230
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStateExtra:[Ljava/lang/String;

    .line 231
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedReason:[Ljava/lang/String;

    .line 232
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    .line 233
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    .line 234
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    .line 235
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:[I

    .line 236
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [[I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[[I

    .line 237
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:[I

    .line 238
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:[I

    .line 239
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataConnected:[Z

    .line 240
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    new-array v6, v6, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    .line 243
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v3, v6, :cond_0

    .line 244
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    aput v8, v6, v3

    .line 245
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:[I

    aput v8, v6, v3

    .line 247
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    aput v8, v6, v3

    .line 248
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 249
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 250
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:[I

    aput v9, v6, v3

    .line 251
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:[I

    aput v9, v6, v3

    .line 252
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataConnected:[Z

    aput-boolean v8, v6, v3

    .line 253
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:[I

    aput v8, v6, v3

    .line 254
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    aput v8, v6, v3

    .line 255
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:[I

    aput v8, v6, v3

    .line 256
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[[I

    sget-object v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v7, v7, v8

    aput-object v7, v6, v3

    .line 259
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->convertSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    aput-object v7, v6, v3

    .line 260
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(I)V

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    .line 267
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 268
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 269
    .local v2, "handler":Landroid/os/Handler;
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 270
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v5

    .line 271
    .local v5, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v5, :cond_1

    .line 272
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v2, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 276
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 277
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v6, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v6, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xa0d0007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 289
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v6, :cond_2

    .line 290
    const-string v6, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v6, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v6, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    :cond_2
    const-string v6, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v6, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v6, "mz.action.demo.keyguard.lock"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 303
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isValidSlotId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method private adjustOperatorWidth(I)V
    .locals 5
    .param p1, "maxWidth"    # I

    .prologue
    const/4 v4, -0x2

    .line 3051
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3052
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustOperatorWidth: maxWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewGemini:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3055
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewGemini:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 3056
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewGemini:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 3057
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3061
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewGemini:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3063
    .end local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 3059
    .restart local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private append2GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "zh"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    const-string v1, "2G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1157
    :cond_0
    const-string v1, " 2G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private append3GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "zh"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    const-string v1, "3G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1139
    :cond_0
    const-string v1, " 3G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private append4GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "zh"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    const-string v1, "4G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1121
    :cond_0
    const-string v1, " 4G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendSurfix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;

    .prologue
    .line 1036
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1037
    :cond_0
    const/4 p2, 0x0

    .line 1061
    .end local p2    # "operator":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 1040
    .restart local p2    # "operator":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 1041
    .local v2, "voiceNetType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 1042
    .local v1, "dataNetType":I
    if-nez v1, :cond_3

    move v0, v2

    .line 1051
    .local v0, "chosenNetType":I
    :goto_1
    if-eqz v0, :cond_1

    .line 1053
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isShow4G(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1054
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->append4GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .end local v0    # "chosenNetType":I
    :cond_3
    move v0, v1

    .line 1042
    goto :goto_1

    .line 1055
    .restart local v0    # "chosenNetType":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isShow3G(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1056
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->append3GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1058
    :cond_5
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1061
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->append2GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private convertSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3120
    packed-switch p1, :pswitch_data_0

    .line 3137
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3141
    .local v0, "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    return-object v0

    .line 3122
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3123
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3125
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3126
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3128
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3129
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3131
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3132
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3134
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3135
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 2704
    if-eqz p1, :cond_0

    .line 2705
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2707
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2712
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 2708
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2709
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 2712
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private hasService(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1246
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v3, p1

    .line 1247
    .local v0, "tempServiceState":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 1262
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 1257
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 1252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1956
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1957
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1967
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1961
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1962
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1963
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1964
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1967
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v1, p1

    .line 1242
    .local v0, "tempSignalStrength":Landroid/telephony/SignalStrength;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShow3G(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 1072
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 1073
    .local v2, "voiceNetType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 1074
    .local v1, "dataNetType":I
    if-nez v1, :cond_0

    move v0, v2

    .line 1078
    .local v0, "chosenNetType":I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 1086
    const/4 v3, 0x0

    :goto_1
    return v3

    .end local v0    # "chosenNetType":I
    :cond_0
    move v0, v1

    .line 1074
    goto :goto_0

    .line 1084
    .restart local v0    # "chosenNetType":I
    :sswitch_0
    const/4 v3, 0x1

    goto :goto_1

    .line 1078
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private isShow4G(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 1095
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 1096
    .local v2, "voiceNetType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 1097
    .local v1, "dataNetType":I
    if-nez v1, :cond_0

    move v0, v2

    .line 1101
    .local v0, "chosenNetType":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1105
    const/4 v3, 0x0

    :goto_1
    return v3

    .end local v0    # "chosenNetType":I
    :cond_0
    move v0, v1

    .line 1097
    goto :goto_0

    .line 1103
    .restart local v0    # "chosenNetType":I
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_1

    .line 1101
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private isValidSlotId(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 3145
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiOnlyDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2882
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2883
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private refreshLocale()V
    .locals 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 1274
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshing locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 5

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v0, v2, :cond_1

    .line 308
    invoke-static {v0}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v1

    .line 309
    .local v1, "subId":I
    if-ltz v1, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    aput-object v3, v2, v0

    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    aget-object v3, v3, v0

    const/16 v4, 0x1e1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 317
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "Register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_1

    .line 322
    .end local v1    # "subId":I
    :cond_1
    return-void
.end method

.method private resetPhoneState(I)V
    .locals 5
    .param p1, "slotID"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3150
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPhoneState, slotID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object v4, v0, p1

    .line 3154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object v4, v0, p1

    .line 3156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    aput v3, v0, p1

    .line 3157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:[I

    aput v3, v0, p1

    .line 3159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    aput v3, v0, p1

    .line 3160
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v0, v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$myPhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    return-void
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1267
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 1269
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating airplane mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void

    :cond_0
    move v0, v1

    .line 1267
    goto :goto_0
.end method

.method private updateCarrierText(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 892
    const v0, 0x104010c

    .line 923
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 924
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 925
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting mCarrierName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_0
    return-void

    .line 898
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 918
    const v0, 0x7f0b00fd

    goto :goto_0

    .line 901
    :pswitch_1
    const v0, 0x7f0b00fd

    .line 902
    goto :goto_0

    .line 904
    :pswitch_2
    const v0, 0x7f0b00fe

    .line 905
    goto :goto_0

    .line 907
    :pswitch_3
    const v0, 0x7f0b00ff

    .line 908
    goto :goto_0

    .line 915
    :pswitch_4
    const v0, 0x7f0b00fc

    .line 916
    goto :goto_0

    .line 898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2018
    const-string v7, "StatusBar.NetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateConnectivity: intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2023
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 2026
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 2028
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionRateViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2029
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 2030
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionRateViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2031
    .local v6, "v":Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-nez v7, :cond_2

    .line 2032
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2029
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    move v7, v9

    .line 2026
    goto :goto_0

    .line 2034
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "mz_current_network_speed"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v5, v8

    .line 2036
    .local v5, "isEnable":Z
    :goto_3
    if-eqz v5, :cond_0

    .line 2037
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .end local v5    # "isEnable":Z
    :cond_3
    move v5, v9

    .line 2034
    goto :goto_3

    .line 2041
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v7, :cond_5

    .line 2042
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 2043
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2049
    :goto_4
    const-string v7, "inetCondition"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2052
    .local v2, "connectionStatus":I
    const-string v7, "StatusBar.NetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateConnectivity: networkInfo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const-string v7, "StatusBar.NetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateConnectivity: connectionStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const/16 v7, 0x32

    if-le v2, v7, :cond_6

    :goto_5
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    .line 2058
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_7

    .line 2059
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 2065
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 2066
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 2067
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 2068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 2069
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 2070
    return-void

    .line 2045
    .end local v2    # "connectionStatus":I
    :cond_5
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 2046
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_4

    .restart local v2    # "connectionStatus":I
    :cond_6
    move v8, v9

    .line 2056
    goto :goto_5

    .line 2061
    :cond_7
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_6
.end method

.method private final updateDataIcon()V
    .locals 2

    .prologue
    .line 1731
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 1732
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon(I)V

    .line 1731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1734
    :cond_0
    return-void
.end method

.method private final updateDataIcon(I)V
    .locals 13
    .param p1, "slotId"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 1737
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " updateDataIcon("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/4 v0, 0x0

    .line 1740
    .local v0, "iconId":I
    const/4 v5, 0x1

    .line 1746
    .local v5, "visible":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:[I

    aget v3, v6, p1

    .line 1747
    .local v3, "tempDataState":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v6, p1

    .line 1748
    .local v4, "tempSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    aget v1, v6, p1

    .line 1749
    .local v1, "tempDataActivity":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[[I

    aget-object v2, v6, p1

    .line 1752
    .local v2, "tempDataIconList":[I
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataState["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSimState["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataActivity["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataIconList["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[[I

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1760
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_0

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_2

    .line 1762
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService(I)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne v3, v9, :cond_1

    .line 1763
    packed-switch v1, :pswitch_data_0

    .line 1774
    aget v0, v2, v10

    .line 1777
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:[I

    aput v0, v6, p1

    .line 1810
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:[I

    aput v0, v6, p1

    .line 1811
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:[Z

    aput-boolean v5, v6, p1

    .line 1813
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting mDataDirectionIconId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting mDataConnected["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:[Z

    aget-boolean v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return-void

    .line 1765
    :pswitch_0
    aget v0, v2, v11

    .line 1766
    goto :goto_0

    .line 1768
    :pswitch_1
    aget v0, v2, v9

    .line 1769
    goto :goto_0

    .line 1771
    :pswitch_2
    aget v0, v2, v12

    .line 1772
    goto :goto_0

    .line 1779
    :cond_1
    const/4 v0, 0x0

    .line 1780
    const/4 v5, 0x0

    goto :goto_1

    .line 1783
    :cond_2
    const v0, 0x7f0203be

    .line 1784
    const/4 v5, 0x0

    goto :goto_1

    .line 1788
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService(I)Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v3, v9, :cond_4

    .line 1789
    packed-switch v1, :pswitch_data_1

    .line 1801
    aget v0, v2, v10

    .line 1802
    goto :goto_1

    .line 1791
    :pswitch_3
    aget v0, v2, v11

    .line 1792
    goto :goto_1

    .line 1794
    :pswitch_4
    aget v0, v2, v9

    .line 1795
    goto :goto_1

    .line 1797
    :pswitch_5
    aget v0, v2, v12

    .line 1798
    goto :goto_1

    .line 1805
    :cond_4
    const/4 v0, 0x0

    .line 1806
    const/4 v5, 0x0

    goto :goto_1

    .line 1763
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1789
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 2

    .prologue
    .line 1423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 1424
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType(I)V

    .line 1423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1426
    :cond_0
    return-void
.end method

.method private final updateDataNetType(I)V
    .locals 14
    .param p1, "slotId"    # I

    .prologue
    const v13, 0x7f02008b

    const v12, 0x7f02007a

    const v11, 0x7f0b008f

    const v10, 0x7f0b008a

    const v9, 0x7f0b008d

    .line 1429
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " updateDataNetType("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    aget v3, v6, p1

    .line 1432
    .local v3, "tempDataNetType":I
    if-nez v3, :cond_0

    .line 1434
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .line 1436
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:[I

    aget v4, v6, p1

    .line 1438
    .local v4, "tempDataState":I
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataNetType["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataState["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const-string v1, ""

    .line 1443
    .local v1, "tempContentDescriptionDataType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1445
    .local v5, "tempDataTypeIconId":I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v6, :cond_2

    .line 1447
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1448
    .local v2, "tempDataIconList":[I
    const v5, 0x7f0203aa

    .line 1449
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1450
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1621
    :goto_0
    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    .line 1622
    packed-switch v3, :pswitch_data_0

    .line 1688
    :pswitch_0
    const/4 v5, 0x0

    .line 1706
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:[Ljava/lang/String;

    aput-object v1, v6, p1

    .line 1707
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    aput v5, v6, p1

    .line 1708
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[[I

    aput-object v2, v6, p1

    .line 1710
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting mDataTypeIconId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting mDataIconList["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[[I

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    return-void

    .line 1453
    .end local v2    # "tempDataIconList":[I
    :cond_2
    packed-switch v3, :pswitch_data_1

    .line 1597
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_1a

    .line 1598
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1599
    .restart local v2    # "tempDataIconList":[I
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1600
    :cond_3
    const v5, 0x7f0203a0

    .line 1604
    :goto_2
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1605
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1455
    .end local v2    # "tempDataIconList":[I
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_4

    .line 1456
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1457
    .restart local v2    # "tempDataIconList":[I
    const/4 v5, 0x0

    .line 1458
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1459
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1461
    goto/16 :goto_0

    .line 1466
    .end local v2    # "tempDataIconList":[I
    :cond_4
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_7

    .line 1467
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1468
    .restart local v2    # "tempDataIconList":[I
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1469
    :cond_5
    const v5, 0x7f02039d

    .line 1473
    :goto_3
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1474
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0093

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1476
    goto/16 :goto_0

    .line 1471
    :cond_6
    const v5, 0x7f02039e

    goto :goto_3

    .line 1481
    .end local v2    # "tempDataIconList":[I
    :cond_7
    :pswitch_4
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1482
    .restart local v2    # "tempDataIconList":[I
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1483
    :cond_8
    const v5, 0x7f020395

    .line 1487
    :goto_4
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1488
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1490
    goto/16 :goto_0

    .line 1485
    :cond_9
    const v5, 0x7f020396

    goto :goto_4

    .line 1495
    .end local v2    # "tempDataIconList":[I
    :pswitch_5
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v6, :cond_c

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1496
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1497
    .restart local v2    # "tempDataIconList":[I
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_a

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1498
    :cond_a
    const v5, 0x7f0203a3

    .line 1502
    :goto_5
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1503
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0b008e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1500
    :cond_b
    const v5, 0x7f0203a7

    goto :goto_5

    .line 1506
    .end local v2    # "tempDataIconList":[I
    :cond_c
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1507
    .restart local v2    # "tempDataIconList":[I
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1508
    :cond_d
    const v5, 0x7f020395

    .line 1512
    :goto_6
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1513
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1516
    goto/16 :goto_0

    .line 1510
    :cond_e
    const v5, 0x7f020396

    goto :goto_6

    .line 1521
    .end local v2    # "tempDataIconList":[I
    :pswitch_6
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v6, :cond_11

    .line 1522
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1523
    .restart local v2    # "tempDataIconList":[I
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_f

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1524
    :cond_f
    const v5, 0x7f0203a5

    .line 1528
    :goto_7
    const v6, 0x7f02008c

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1529
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0b008e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1526
    :cond_10
    const v5, 0x7f0203a6

    goto :goto_7

    .line 1532
    .end local v2    # "tempDataIconList":[I
    :cond_11
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1533
    .restart local v2    # "tempDataIconList":[I
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1534
    :cond_12
    const v5, 0x7f020395

    .line 1538
    :goto_8
    iput v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1539
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1542
    goto/16 :goto_0

    .line 1536
    :cond_13
    const v5, 0x7f020396

    goto :goto_8

    .line 1544
    .end local v2    # "tempDataIconList":[I
    :pswitch_7
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_14

    .line 1546
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1547
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f0203a8

    .line 1548
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1549
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0091

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1551
    goto/16 :goto_0

    .line 1556
    .end local v2    # "tempDataIconList":[I
    :cond_14
    :pswitch_8
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_15

    .line 1557
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1558
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f0203a8

    .line 1559
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1560
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0091

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1562
    goto/16 :goto_0

    .line 1570
    .end local v2    # "tempDataIconList":[I
    :cond_15
    :pswitch_9
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1571
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f0203a9

    .line 1572
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1573
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1575
    goto/16 :goto_0

    .line 1577
    .end local v2    # "tempDataIconList":[I
    :pswitch_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1578
    .local v0, "show4GforLTE":Z
    if-eqz v0, :cond_18

    .line 1579
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1580
    .restart local v2    # "tempDataIconList":[I
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_16

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1581
    :cond_16
    const v5, 0x7f020399

    .line 1585
    :goto_9
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1586
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1583
    :cond_17
    const v5, 0x7f02039a

    goto :goto_9

    .line 1589
    .end local v2    # "tempDataIconList":[I
    :cond_18
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1590
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f0203ae

    .line 1591
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1592
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0090

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1595
    goto/16 :goto_0

    .line 1602
    .end local v0    # "show4GforLTE":Z
    :cond_19
    const v5, 0x7f0203a1

    goto/16 :goto_2

    .line 1608
    .end local v2    # "tempDataIconList":[I
    :cond_1a
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1609
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f0203a9

    .line 1610
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1611
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1627
    :pswitch_b
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1b

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1628
    :cond_1b
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1629
    const v5, 0x7f0203a0

    .line 1630
    iput v13, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1631
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1634
    :cond_1c
    const/4 v5, 0x0

    .line 1636
    goto/16 :goto_1

    .line 1642
    :pswitch_c
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1643
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1644
    const v5, 0x7f02039d

    .line 1645
    const v6, 0x7f02007d

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1646
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0093

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1648
    :cond_1d
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1649
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1650
    const v5, 0x7f0203a0

    .line 1651
    iput v13, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1655
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1658
    :cond_1e
    const/4 v5, 0x0

    .line 1660
    goto/16 :goto_1

    .line 1666
    :pswitch_d
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1667
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1668
    :cond_1f
    const v5, 0x7f020395

    .line 1672
    :goto_a
    iput v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1673
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1675
    goto/16 :goto_1

    .line 1670
    :cond_20
    const v5, 0x7f020396

    goto :goto_a

    .line 1677
    :pswitch_e
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1678
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_21

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1679
    :cond_21
    const v5, 0x7f020399

    .line 1683
    :goto_b
    const v6, 0x7f02007c

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1684
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1686
    goto/16 :goto_1

    .line 1681
    :cond_22
    const v5, 0x7f02039a

    goto :goto_b

    .line 1622
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
    .end packed-switch

    .line 1453
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private updateNetworkNameGeminiEx(ILjava/lang/String;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "numberic"    # Ljava/lang/String;

    .prologue
    .line 1002
    if-eqz p2, :cond_0

    .line 1004
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, "locCountry":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "locLanguage":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MzOperatorHelper;->getInstance()Landroid/telephony/MzOperatorHelper;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/telephony/MzOperatorHelper;->getOperatorExtraShort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "locAlphaExtraShort":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1013
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aput-object v0, v4, p1

    .line 1014
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperatorAlphaExtraShort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    .end local v0    # "locAlphaExtraShort":Ljava/lang/String;
    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1017
    .restart local v0    # "locAlphaExtraShort":Ljava/lang/String;
    .restart local v1    # "locCountry":Ljava/lang/String;
    .restart local v2    # "locLanguage":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, "operatorAlphaLong":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aput-object v3, v4, p1

    .line 1019
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperatorAlphaLong = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1022
    .end local v0    # "locAlphaExtraShort":Ljava/lang/String;
    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    .end local v3    # "operatorAlphaLong":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private final updateSimState(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStateExtra:[Ljava/lang/String;

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedReason:[Ljava/lang/String;

    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStateExtra:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedReason:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSimState(ILjava/lang/String;Ljava/lang/String;)V

    .line 1169
    return-void
.end method

.method private final updateSimState(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "stateExtra"    # Ljava/lang/String;
    .param p3, "lockedReason"    # Ljava/lang/String;

    .prologue
    .line 1177
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateSimState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stateExtra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lockedReason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v1, 0x0

    .line 1180
    .local v1, "tempSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v0, 0x0

    .line 1182
    .local v0, "tempCarrierName":Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1183
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1184
    const-string v2, "PERM_DISABLED"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1186
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1225
    :goto_0
    if-eqz v1, :cond_1

    .line 1226
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v2, p1

    .line 1227
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting mSimState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 1230
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateServiceState(I)V

    .line 1233
    :cond_1
    if-eqz v0, :cond_2

    .line 1234
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aput-object v0, v2, p1

    .line 1235
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting mCarrierName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_2
    return-void

    .line 1189
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1193
    :cond_4
    const-string v2, "READY"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "IMSI"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "LOADED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1196
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 1198
    :cond_6
    const-string v2, "LOCKED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1202
    const-string v2, "PERM_DISABLED"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1203
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1204
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "updateSimState -- mSimState[%d] = IccCardConstants.State.PERM_DISABLED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1206
    :cond_7
    const-string v2, "PIN"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1207
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1208
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1211
    :cond_8
    const-string v2, "PUK"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1212
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1213
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1217
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1218
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0104

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1222
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0
.end method

.method private final updateTelephonySignalStrength()V
    .locals 2

    .prologue
    .line 1278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 1279
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1281
    :cond_0
    return-void
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 16
    .param p1, "slotId"    # I

    .prologue
    .line 1284
    const-string v11, "StatusBar.NetworkController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " updateTelephonySignalStrength("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v1, 0x0

    .line 1287
    .local v1, "handled":Z
    const/4 v7, 0x0

    .line 1288
    .local v7, "tempPhoneSignalIconId":I
    const/4 v5, 0x0

    .line 1289
    .local v5, "tempDataSignalIconId":I
    const/4 v8, 0x0

    .line 1290
    .local v8, "tempServiceState":Landroid/telephony/ServiceState;
    const/4 v9, 0x0

    .line 1291
    .local v9, "tempSignalStrength":Landroid/telephony/SignalStrength;
    const-string v4, ""

    .line 1292
    .local v4, "tempContentDescriptionPhoneSignal":Ljava/lang/String;
    const/4 v11, 0x2

    new-array v6, v11, [I

    fill-array-data v6, :array_0

    .line 1295
    .local v6, "tempLastSignalLevel":[I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v9, v11, p1

    .line 1296
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v8, v11, p1

    .line 1297
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v10, v11, p1

    .line 1299
    .local v10, "tempSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v11, "StatusBar.NetworkController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mSignalStrength["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string v11, "StatusBar.NetworkController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mServiceState["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string v11, "StatusBar.NetworkController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mSimState["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v11, :cond_0

    .line 1308
    sget-object v11, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1309
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x5

    aget v5, v11, v12

    move v7, v5

    .line 1313
    :goto_0
    const/4 v1, 0x1

    .line 1316
    :cond_0
    if-nez v1, :cond_1

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v11, :cond_1

    .line 1317
    const v5, 0x7f0203f8

    move v7, v5

    .line 1318
    const/4 v1, 0x1

    .line 1321
    :cond_1
    if-nez v1, :cond_2

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v11, :cond_2

    .line 1322
    const v5, 0x7f0203ba

    move v7, v5

    .line 1323
    const/4 v1, 0x1

    .line 1326
    :cond_2
    if-nez v1, :cond_3

    .line 1327
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService(I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1328
    const-string v11, "StatusBar.NetworkController"

    const-string v12, "updateTelephonySignalStrength: !hasService()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const v7, 0x7f0203ba

    .line 1343
    const v11, 0x7f020091

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1344
    const v5, 0x7f0203ba

    .line 1414
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:[I

    aput v5, v11, p1

    .line 1415
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aput-object v4, v11, p1

    .line 1416
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    aput v7, v11, p1

    .line 1418
    const-string v11, "StatusBar.NetworkController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setting mDataSignalIconId["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:[I

    aget v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const-string v11, "StatusBar.NetworkController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setting mPhoneSignalIconId["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    aget v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-void

    .line 1311
    :cond_4
    const v5, 0x7f0203fa

    move v7, v5

    goto/16 :goto_0

    .line 1354
    :cond_5
    if-nez v9, :cond_6

    .line 1355
    const-string v11, "StatusBar.NetworkController"

    const-string v12, "updateTelephonySignalStrength: mSignalStrength[%d] == null"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const v7, 0x7f0203e7

    .line 1357
    const v11, 0x7f020091

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1358
    const v5, 0x7f0203e7

    .line 1359
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 1364
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma(I)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v11, :cond_7

    .line 1365
    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .local v2, "iconLevel":I
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1373
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1374
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1375
    sget-object v11, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1379
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_OPERATOR:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v11, v12

    .line 1401
    .local v3, "iconList":[I
    :goto_3
    aget v7, v3, v2

    .line 1402
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v11, v11, v12

    aget v11, v11, v2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1404
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v12, v12, v2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1409
    move v5, v7

    goto/16 :goto_1

    .line 1370
    .end local v2    # "iconLevel":I
    .end local v3    # "iconList":[I
    :cond_7
    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    .restart local v2    # "iconLevel":I
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_2

    .line 1381
    :cond_8
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v11, v12

    .restart local v3    # "iconList":[I
    goto :goto_3

    .line 1384
    .end local v3    # "iconList":[I
    :cond_9
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v11, v12

    .restart local v3    # "iconList":[I
    goto :goto_3

    .line 1388
    .end local v3    # "iconList":[I
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1389
    sget-object v11, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1393
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_OPERATOR:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v11, v12

    .restart local v3    # "iconList":[I
    goto :goto_3

    .line 1395
    .end local v3    # "iconList":[I
    :cond_b
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v11, v12

    .restart local v3    # "iconList":[I
    goto :goto_3

    .line 1398
    .end local v3    # "iconList":[I
    :cond_c
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v11, v12

    .restart local v3    # "iconList":[I
    goto :goto_3

    .line 1292
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1938
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 1939
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1940
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 1941
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    .line 1953
    :goto_0
    return-void

    .line 1944
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    if-eqz v0, :cond_1

    .line 1945
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1946
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 1951
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 1948
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const v0, 0x7f02040a

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1949
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    const v1, 0x7f0200a0

    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1948
    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1878
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1879
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1880
    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    .line 1934
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 1935
    return-void

    :cond_1
    move v7, v8

    .line 1880
    goto :goto_0

    .line 1883
    :cond_2
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1887
    const-string v9, "networkInfo"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1889
    .local v3, "inf":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_3

    .line 1890
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnecting:Z

    .line 1891
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 1892
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_2

    .line 1895
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnecting:Z

    .line 1896
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 1897
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_3

    .line 1901
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    :cond_4
    const-string v9, "networkInfo"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 1903
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 1904
    .local v6, "wasConnected":Z
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_4
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 1906
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v7, :cond_8

    if-nez v6, :cond_8

    .line 1908
    const-string v7, "wifiInfo"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiInfo;

    .line 1909
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    if-nez v4, :cond_5

    .line 1910
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1912
    :cond_5
    if-eqz v4, :cond_7

    .line 1913
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .end local v4    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    move v7, v8

    .line 1904
    goto :goto_4

    .line 1915
    .restart local v4    # "info":Landroid/net/wifi/WifiInfo;
    :cond_7
    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_1

    .line 1917
    .end local v4    # "info":Landroid/net/wifi/WifiInfo;
    :cond_8
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v7, :cond_0

    .line 1918
    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_1

    .line 1920
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "inf":Landroid/net/NetworkInfo;
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "wasConnected":Z
    :cond_9
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1921
    const-string v7, "newRssi"

    const/16 v9, -0xc8

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    .line 1925
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    const/16 v9, -0x64

    if-gt v7, v9, :cond_a

    .line 1926
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    goto/16 :goto_1

    .line 1928
    :cond_a
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    sget v8, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    goto/16 :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 1997
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 1998
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 1999
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 2000
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 2003
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    .line 2012
    :goto_1
    return-void

    .line 2002
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_0

    .line 2006
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 2007
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 2010
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1973
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1974
    .local v0, "action":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 1975
    .local v1, "wasConnected":Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1976
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1978
    .local v2, "wimaxStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 1992
    .end local v2    # "wimaxStatus":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 1993
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 1994
    return-void

    .restart local v2    # "wimaxStatus":I
    :cond_1
    move v3, v4

    .line 1978
    goto :goto_0

    .line 1980
    .end local v2    # "wimaxStatus":I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1981
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    goto :goto_1

    .line 1982
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1983
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 1985
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 1988
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 1990
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 1988
    goto :goto_2

    :cond_5
    move v3, v4

    .line 1990
    goto :goto_3
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public addConnectionRateView(Lcom/android/systemui/statusbar/ConnectionRateView;)V
    .locals 1
    .param p1, "v"    # Lcom/android/systemui/statusbar/ConnectionRateView;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionRateViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 372
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 367
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 21
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 2724
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-nez v3, :cond_1

    const-string v3, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2725
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 2726
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 2727
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 2728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 2729
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 2803
    :cond_0
    return-void

    .line 2730
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_2

    const-string v3, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2731
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 2732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2733
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_0

    .line 2735
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_0

    const-string v3, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2736
    const-string v3, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2737
    .local v13, "airplane":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2738
    const-string v3, "show"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2739
    .local v2, "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2740
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    const v3, 0x7f0203f2

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_1

    .line 2743
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v2    # "show":Z
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v3, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2744
    .local v15, "fully":Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 2745
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 2747
    :cond_4
    const-string v3, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2748
    .local v20, "wifi":Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 2749
    const-string v3, "show"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2750
    .restart local v2    # "show":Z
    const-string v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2751
    .local v18, "level":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 2752
    const-string v3, "null"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, -0x1

    :goto_3
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 2755
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    if-gez v3, :cond_8

    const v4, 0x7f02040a

    .line 2757
    .local v4, "iconId":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2758
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "Demo"

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZZIILjava/lang/String;)V

    goto :goto_5

    .line 2745
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v2    # "show":Z
    .end local v4    # "iconId":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "level":Ljava/lang/String;
    .end local v20    # "wifi":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 2752
    .restart local v2    # "show":Z
    .restart local v18    # "level":Ljava/lang/String;
    .restart local v20    # "wifi":Ljava/lang/String;
    :cond_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_3

    .line 2755
    :cond_8
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v3, v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    aget v4, v3, v5

    goto :goto_4

    .line 2766
    .end local v2    # "show":Z
    .end local v18    # "level":Ljava/lang/String;
    :cond_9
    const-string v3, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2767
    .local v19, "mobile":Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 2768
    const-string v3, "show"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2769
    .restart local v2    # "show":Z
    const-string v3, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2770
    .local v14, "datatype":Ljava/lang/String;
    if-eqz v14, :cond_a

    .line 2771
    const-string v3, "1x"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const v3, 0x7f0203a8

    :goto_6
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 2783
    :cond_a
    sget-object v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 2784
    .local v17, "icons":[[I
    const-string v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2785
    .restart local v18    # "level":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 2786
    const-string v3, "null"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, -0x1

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 2789
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    if-gez v3, :cond_15

    const v4, 0x7f0203f3

    .line 2791
    .restart local v4    # "iconId":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2792
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const-string v11, "Demo"

    const-string v12, "Demo"

    move-object v5, v1

    move v7, v2

    move v8, v4

    invoke-interface/range {v5 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 2771
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v4    # "iconId":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "icons":[[I
    .end local v18    # "level":Ljava/lang/String;
    :cond_c
    const-string v3, "3g"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const v3, 0x7f0203a9

    goto :goto_6

    :cond_d
    const-string v3, "4g"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const v3, 0x7f0203aa

    goto :goto_6

    :cond_e
    const-string v3, "e"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const v3, 0x7f0203ab

    goto :goto_6

    :cond_f
    const-string v3, "g"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const v3, 0x7f0203ac

    goto :goto_6

    :cond_10
    const-string v3, "h"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const v3, 0x7f0203ad

    goto/16 :goto_6

    :cond_11
    const-string v3, "lte"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const v3, 0x7f0203ae

    goto/16 :goto_6

    :cond_12
    const-string v3, "roam"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const v3, 0x7f0203af

    goto/16 :goto_6

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 2786
    .restart local v17    # "icons":[[I
    .restart local v18    # "level":Ljava/lang/String;
    :cond_14
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    aget-object v5, v17, v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_7

    .line 2789
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v3, v17, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    aget v4, v3, v5

    goto/16 :goto_8
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2572
    const-string v1, "NetworkController state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    const-string v2, "  %s network type %d (%s)"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v1, :cond_0

    const-string v1, "CONNECTED"

    :goto_0
    aput-object v1, v3, v4

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2576
    const-string v1, "  - telephony ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v0, v1, :cond_1

    .line 2579
    const-string v1, "====== SlotId: %d ======"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2580
    const-string v1, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2581
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2582
    const-string v1, "  hasService()="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2583
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2584
    const-string v1, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2585
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2586
    const-string v1, "  mDataConnected="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2587
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2588
    const-string v1, "  mSimState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2589
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2590
    const-string v1, "  mPhoneState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2591
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2592
    const-string v1, "  mDataState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2593
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2594
    const-string v1, "  mDataActivity="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2595
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2596
    const-string v1, "  mDataNetType="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2597
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2598
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2599
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    const-string v1, "  mServiceState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2601
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2602
    const-string v1, "  mSignalStrength="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2603
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2604
    const-string v1, "  mLastSignalLevel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2605
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2606
    const-string v1, "  mCarrierName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2607
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2608
    const-string v1, "  mNetworkNameDefault="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2609
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2610
    const-string v1, "  mNetworkNameSeparator="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2611
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    const-string v1, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2613
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2614
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2615
    const-string v1, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2616
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2617
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2618
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2619
    const-string v1, "  mDataDirectionIconId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2620
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2621
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2622
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    const-string v1, "  mDataSignalIconId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2624
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2625
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2626
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2627
    const-string v1, "  mDataTypeIconId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2628
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2629
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2630
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    const-string v1, "  mQSDataTypeIconId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2632
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2633
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2634
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    const-string v1, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2637
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2638
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2639
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2641
    const-string v1, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2642
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2643
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2644
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2573
    .end local v0    # "i":I
    :cond_0
    const-string v1, "DISCONNECTED"

    goto/16 :goto_0

    .line 2647
    .restart local v0    # "i":I
    :cond_1
    const-string v1, "  - wifi ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2648
    const-string v1, "  mWifiEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2649
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2650
    const-string v1, "  mWifiConnected="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2651
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2652
    const-string v1, "  mWifiRssi="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2653
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2654
    const-string v1, "  mWifiLevel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2655
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2656
    const-string v1, "  mWifiSsid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2657
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2658
    const-string v1, "  mWifiIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2660
    const-string v1, "  mQSWifiIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2662
    const-string v1, "  mWifiActivity="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2663
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2665
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v1, :cond_2

    .line 2666
    const-string v1, "  - wimax ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2667
    const-string v1, "  mIsWimaxEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2668
    const-string v1, "  mWimaxConnected="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2669
    const-string v1, "  mWimaxIdle="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2670
    const-string v1, "  mWimaxIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2672
    const-string v1, "  mWimaxSignal=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2673
    const-string v1, "  mWimaxState=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2674
    const-string v1, "  mWimaxExtraState=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2677
    :cond_2
    const-string v1, "  - Bluetooth ----"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2678
    const-string v1, "  mBtReverseTethered="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2679
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2681
    const-string v1, "  - connectivity ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2682
    const-string v1, "  mInetCondition="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2683
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2685
    const-string v1, "  - icons ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2686
    const-string v1, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2687
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2688
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2689
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2690
    const-string v1, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2691
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2692
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2693
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    const-string v1, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2695
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2696
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2697
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2698
    const-string v1, "  mLastCombinedLabel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2699
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2700
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    return-void
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    .line 1715
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v4, p1

    .line 1717
    .local v2, "tempServiceState":Landroid/telephony/ServiceState;
    if-eqz v2, :cond_1

    .line 1718
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1719
    .local v0, "iconIndex":I
    if-eq v0, v3, :cond_1

    .line 1720
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1721
    .local v1, "iconMode":I
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    .line 1727
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 17
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v1, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 414
    .local v2, "wifiEnabled":Z
    :goto_0
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 416
    .local v7, "wifiDesc":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    :cond_1
    const/4 v4, 0x1

    .line 419
    .local v4, "wifiIn":Z
    :goto_2
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    :cond_2
    const/4 v5, 0x1

    .line 422
    .local v5, "wifiOut":Z
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    :cond_3
    const/4 v13, 0x1

    .line 428
    .local v13, "mobileIn":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    :cond_4
    const/4 v14, 0x1

    .line 431
    .local v14, "mobileOut":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 432
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    const/16 v16, 0x0

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 449
    return-void

    .line 413
    .end local v2    # "wifiEnabled":Z
    .end local v4    # "wifiIn":Z
    .end local v5    # "wifiOut":Z
    .end local v7    # "wifiDesc":Ljava/lang/String;
    .end local v13    # "mobileIn":Z
    .end local v14    # "mobileOut":Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 414
    .restart local v2    # "wifiEnabled":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 416
    .restart local v7    # "wifiDesc":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 419
    .restart local v4    # "wifiIn":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 425
    .restart local v5    # "wifiOut":Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 428
    .restart local v13    # "mobileIn":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 436
    .restart local v14    # "mobileOut":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_c

    .line 438
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v16, v1, v3

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 443
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v16, v1, v3

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onLidSwitchChanged(Z)V
    .locals 4
    .param p1, "lidopen"    # Z

    .prologue
    .line 3098
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLidSwitchChanged(), lidopen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsLidClosed:Z

    .line 3101
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsLidClosed:Z

    if-eqz v1, :cond_0

    .line 3106
    sget-object v1, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3107
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3113
    .local v0, "maxWidth":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->adjustOperatorWidth(I)V

    .line 3115
    .end local v0    # "maxWidth":I
    :cond_0
    return-void

    .line 3099
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3108
    :cond_2
    sget-object v1, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3109
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .restart local v0    # "maxWidth":I
    goto :goto_1

    .line 3111
    .end local v0    # "maxWidth":I
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .restart local v0    # "maxWidth":I
    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 457
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "action":Ljava/lang/String;
    const-string v0, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 571
    :cond_1
    :goto_0
    return-void

    .line 464
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    const-string v0, "slot"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 466
    .local v1, "slotId":I
    const-string v0, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSimState(ILandroid/content/Intent;)V

    .line 471
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 472
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon(I)V

    .line 473
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews(I)V

    goto :goto_0

    .line 475
    .end local v1    # "slotId":I
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    const-string v0, "subscription"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 478
    .local v11, "subId":I
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 479
    .restart local v1    # "slotId":I
    const-string v0, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v0, "spn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "showPlmn"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V

    .line 486
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateServiceState(I)V

    .line 487
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 489
    .end local v1    # "slotId":I
    .end local v11    # "subId":I
    :cond_4
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 491
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 493
    :cond_6
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 496
    :cond_7
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 499
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_8

    .line 501
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v7, v0, :cond_9

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0xa0a0139

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 501
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 508
    .end local v7    # "i":I
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v7, v0, :cond_9

    .line 509
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(I)V

    .line 510
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateServiceState(I)V

    .line 511
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 508
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 514
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 515
    .end local v7    # "i":I
    :cond_a
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 516
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v7, v0, :cond_b

    .line 517
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateServiceState(I)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStateExtra:[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedReason:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-direct {p0, v7, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSimState(ILjava/lang/String;Ljava/lang/String;)V

    .line 516
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 520
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 521
    .end local v7    # "i":I
    :cond_c
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 524
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 526
    :cond_e
    const-string v0, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 527
    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->updateSIMInfos(Landroid/content/Context;)V

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 531
    :cond_f
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterPhoneStateListener()V

    .line 533
    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->updateSIMInfos(Landroid/content/Context;)V

    .line 535
    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 536
    .local v10, "mSimInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v10, :cond_10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 538
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v7, v0, :cond_15

    .line 539
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->resetPhoneState(I)V

    .line 538
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 541
    .end local v7    # "i":I
    :cond_11
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v0, v2, :cond_15

    .line 542
    const-string v0, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUBINFO size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v7, v0, :cond_15

    .line 544
    const/4 v12, 0x1

    .line 545
    .local v12, "subNull":Z
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 546
    .local v9, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-ne v0, v7, :cond_12

    .line 547
    const/4 v12, 0x0

    .line 551
    .end local v9    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_13
    if-eqz v12, :cond_14

    .line 552
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->resetPhoneState(I)V

    .line 543
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 557
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "subNull":Z
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerPhoneStateListener()V

    .line 558
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 559
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 566
    .end local v10    # "mSimInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_16
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 567
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 568
    :cond_17
    const-string v0, "mz.action.demo.keyguard.lock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 10
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 375
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnecting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v0, :cond_3

    :cond_1
    move v1, v8

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnecting:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZZIILjava/lang/String;)V

    .line 384
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 386
    const-string v0, "StatusBar.NetworkController"

    const-string v2, "wimax is special, setMobileDataIndicators(SLOT_ID_1)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    aget v3, v0, v9

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:[I

    aget v4, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    aget v5, v0, v9

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v0, v9

    move-object v0, p1

    move v1, v9

    move v2, v8

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_0

    :cond_3
    move v1, v9

    .line 376
    goto :goto_1

    .line 387
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_2

    .line 397
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v1, v0, :cond_2

    .line 398
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    aget v3, v0, v1

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:[I

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    aget v5, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v6, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v0, v1

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:[I

    aget v3, v0, v1

    goto :goto_4
.end method

.method refreshViews()V
    .locals 2

    .prologue
    .line 2076
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 2077
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews(I)V

    .line 2076
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2079
    :cond_0
    return-void
.end method

.method refreshViews(I)V
    .locals 41
    .param p1, "slotId"    # I

    .prologue
    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 2084
    .local v16, "context":Landroid/content/Context;
    const/4 v15, 0x0

    .line 2085
    .local v15, "combinedSignalIconId":I
    const/4 v13, 0x0

    .line 2086
    .local v13, "combinedActivityIconId":I
    const-string v14, ""

    .line 2087
    .local v14, "combinedLabel":Ljava/lang/String;
    const-string v40, ""

    .line 2088
    .local v40, "wifiLabel":Ljava/lang/String;
    const-string v23, ""

    .line 2090
    .local v23, "mobileLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v18

    .line 2093
    .local v18, "emergencyOnly":Z
    const-string v35, ""

    .line 2096
    .local v35, "tempNetworkName":Ljava/lang/String;
    const/16 v29, 0x0

    .line 2097
    .local v29, "tempDataSignalIconId":I
    const/16 v36, 0x0

    .line 2099
    .local v36, "tempPhoneSignalIconId":I
    const-string v8, ""

    .line 2100
    .local v8, "tempContentDescriptionPhoneSignal":Ljava/lang/String;
    const-string v9, ""

    .line 2101
    .local v9, "tempContentDescriptionDataType":Ljava/lang/String;
    const-string v25, ""

    .line 2103
    .local v25, "tempContentDescriptionCombinedSignal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v38, v3, p1

    .line 2104
    .local v38, "tempSignalStrength":Landroid/telephony/SignalStrength;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v37, v3, p1

    .line 2105
    .local v37, "tempServiceState":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:[Z

    aget-boolean v27, v3, p1

    .line 2106
    .local v27, "tempDataConnected":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:[I

    aget v26, v3, p1

    .line 2107
    .local v26, "tempDataActivity":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:[I

    aget v29, v3, p1

    .line 2108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v8, v3, p1

    .line 2109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v9, v3, p1

    .line 2110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    aget v36, v3, p1

    .line 2111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v35, v3, p1

    .line 2113
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v3, :cond_5

    .line 2114
    const/16 v36, 0x0

    move/from16 v29, v36

    .line 2115
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2116
    const-string v23, ""

    .line 2200
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v3, :cond_15

    .line 2201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 2202
    const v3, 0x7f0b00b5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 2203
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 2228
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 2229
    move-object/from16 v14, v40

    .line 2230
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 2240
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v3, :cond_1

    .line 2241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0b003e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2242
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 2243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0096

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2247
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_17

    const/16 v19, 0x1

    .line 2248
    .local v19, "ethernetConnected":Z
    :goto_3
    if-eqz v19, :cond_2

    .line 2249
    const v3, 0x7f0b00c0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2252
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v3, :cond_1a

    if-eqz v37, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2257
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0097

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2259
    const v3, 0x7f0203f2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    .line 2260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    aput v6, v5, p1

    aput v6, v4, p1

    aput v6, v3, p1

    .line 2261
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2262
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "airplane mode: reset signal icons and set airplane mode icon."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v3, :cond_18

    .line 2267
    const-string v23, ""

    .line 2319
    :cond_4
    :goto_4
    sparse-switch v29, :sswitch_data_0

    .line 2330
    :goto_5
    const/16 v30, 0x0

    .line 2331
    .local v30, "tempDataTypeIconId":I
    const/16 v34, 0x0

    .line 2332
    .local v34, "tempMobileActivityIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:[I

    aget v28, v3, p1

    .line 2333
    .local v28, "tempDataDirectionIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:[I

    aget v36, v3, p1

    .line 2334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    aget v30, v3, p1

    .line 2335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:[I

    aget v34, v3, p1

    .line 2367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:[I

    aget v33, v3, p1

    .line 2368
    .local v33, "tempLastPhoneSignalIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:[I

    aget v32, v3, p1

    .line 2369
    .local v32, "tempLastDataTypeIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataConnected:[Z

    aget-boolean v31, v3, p1

    .line 2372
    .local v31, "tempLastDataConnected":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 2373
    .local v12, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_6

    .line 2126
    .end local v12    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v19    # "ethernetConnected":Z
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v28    # "tempDataDirectionIconId":I
    .end local v30    # "tempDataTypeIconId":I
    .end local v31    # "tempLastDataConnected":Z
    .end local v32    # "tempLastDataTypeIconId":I
    .end local v33    # "tempLastPhoneSignalIconId":I
    .end local v34    # "tempMobileActivityIconId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_6

    .line 2127
    move-object/from16 v23, v35

    .line 2148
    :goto_7
    if-eqz v27, :cond_0

    .line 2149
    move/from16 v15, v29

    .line 2150
    const/16 v34, 0x0

    .line 2156
    .restart local v34    # "tempMobileActivityIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    aget v3, v3, p1

    if-nez v3, :cond_b

    .line 2157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 2191
    :goto_8
    move/from16 v13, v34

    .line 2193
    move-object/from16 v14, v23

    .line 2194
    move/from16 v15, v29

    .line 2195
    move-object/from16 v25, v9

    .line 2196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:[I

    aput v34, v3, p1

    goto/16 :goto_0

    .line 2128
    .end local v34    # "tempMobileActivityIconId":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-nez v3, :cond_7

    if-eqz v18, :cond_a

    .line 2130
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 2132
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v18, :cond_9

    .line 2134
    :cond_8
    move-object/from16 v23, v35

    goto :goto_7

    .line 2137
    :cond_9
    const-string v23, ""

    goto :goto_7

    .line 2141
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 2143
    const v3, 0x7f0b00b4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_7

    .line 2159
    .restart local v34    # "tempMobileActivityIconId":I
    :cond_b
    packed-switch v26, :pswitch_data_0

    .line 2182
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2183
    :cond_c
    const v34, 0x7f02039b

    goto :goto_8

    .line 2161
    :pswitch_0
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_d

    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2162
    :cond_d
    const v34, 0x7f0203b1

    goto :goto_8

    .line 2164
    :cond_e
    const v34, 0x7f0203b0

    .line 2166
    goto :goto_8

    .line 2168
    :pswitch_1
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2169
    :cond_f
    const v34, 0x7f0203b5

    goto :goto_8

    .line 2171
    :cond_10
    const v34, 0x7f0203b4

    .line 2173
    goto/16 :goto_8

    .line 2175
    :pswitch_2
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2176
    :cond_11
    const v34, 0x7f0203b3

    goto/16 :goto_8

    .line 2178
    :cond_12
    const v34, 0x7f0203b2

    .line 2180
    goto/16 :goto_8

    .line 2185
    :cond_13
    const/16 v34, 0x0

    goto/16 :goto_8

    .line 2205
    .end local v34    # "tempMobileActivityIconId":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 2212
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 2223
    :pswitch_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2214
    :pswitch_4
    const v3, 0x7f0203b0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2217
    :pswitch_5
    const v3, 0x7f0203b4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2220
    :pswitch_6
    const v3, 0x7f0203b2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2233
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_16

    .line 2234
    const-string v40, ""

    goto/16 :goto_2

    .line 2236
    :cond_16
    const v3, 0x7f0b00b4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_2

    .line 2247
    :cond_17
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 2269
    .restart local v19    # "ethernetConnected":Z
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_19

    .line 2271
    const-string v40, ""

    .line 2276
    :goto_9
    move-object/from16 v25, v8

    .line 2277
    move/from16 v15, v29

    goto/16 :goto_4

    .line 2273
    :cond_19
    const v3, 0x7f0b00b4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 2274
    move-object/from16 v14, v40

    goto :goto_9

    .line 2280
    :cond_1a
    if-nez v27, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-nez v3, :cond_4

    if-nez v19, :cond_4

    .line 2283
    const v3, 0x7f0b00b4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2285
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_1b

    move/from16 v15, v29

    .line 2287
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_1c

    move-object/from16 v25, v9

    :goto_b
    goto/16 :goto_4

    .line 2285
    :cond_1b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    goto :goto_a

    .line 2287
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v25, v0

    goto :goto_b

    .line 2325
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 2326
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    goto/16 :goto_5

    .line 2376
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v28    # "tempDataDirectionIconId":I
    .restart local v30    # "tempDataTypeIconId":I
    .restart local v31    # "tempLastDataConnected":Z
    .restart local v32    # "tempLastDataTypeIconId":I
    .restart local v33    # "tempLastPhoneSignalIconId":I
    .restart local v34    # "tempMobileActivityIconId":I
    :cond_1d
    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    if-ne v3, v13, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    if-ne v3, v4, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    if-ne v3, v4, :cond_1e

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v3, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    if-ne v3, v4, :cond_1e

    move/from16 v0, v31

    move/from16 v1, v27

    if-eq v0, v1, :cond_22

    .line 2385
    :cond_1e
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "refreshing SignalClusterView."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2388
    .local v2, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnecting:Z

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v3, :cond_20

    :cond_1f
    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnecting:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZZIILjava/lang/String;)V

    .line 2396
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), tempPhoneSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tempMobileActivityIconId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tempDataTypeIconId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v3, :cond_21

    move/from16 v5, v36

    :goto_e
    move/from16 v3, p1

    move/from16 v6, v34

    move/from16 v7, v30

    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    .line 2408
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto/16 :goto_c

    .line 2388
    :cond_20
    const/4 v3, 0x0

    goto :goto_d

    :cond_21
    move/from16 v5, v29

    .line 2400
    goto :goto_e

    .line 2412
    .end local v2    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eq v3, v4, :cond_23

    .line 2413
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 2416
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    if-eq v3, v4, :cond_24

    .line 2417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 2421
    :cond_24
    move/from16 v0, v33

    move/from16 v1, v36

    if-eq v0, v1, :cond_25

    .line 2422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:[I

    aput v36, v3, p1

    .line 2426
    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    move/from16 v0, v28

    if-eq v3, v0, :cond_26

    .line 2427
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 2431
    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    if-eq v3, v4, :cond_27

    .line 2432
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 2436
    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    if-eq v3, v4, :cond_28

    .line 2437
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 2440
    :cond_28
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    if-eq v3, v15, :cond_29

    .line 2441
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 2445
    :cond_29
    move/from16 v0, v32

    move/from16 v1, v30

    if-eq v0, v1, :cond_2a

    .line 2446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:[I

    aput v30, v3, p1

    .line 2450
    :cond_2a
    move/from16 v0, v31

    move/from16 v1, v27

    if-eq v0, v1, :cond_2b

    .line 2451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataConnected:[Z

    aput-boolean v27, v3, p1

    .line 2455
    :cond_2b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    if-eq v3, v13, :cond_2c

    .line 2456
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    .line 2460
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 2461
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 2462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2463
    .local v10, "N":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_f
    move/from16 v0, v21

    if-ge v0, v10, :cond_2d

    .line 2464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 2465
    .local v39, "v":Landroid/widget/TextView;
    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2463
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 2470
    .end local v10    # "N":I
    .end local v21    # "i":I
    .end local v39    # "v":Landroid/widget/TextView;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2471
    .restart local v10    # "N":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_10
    move/from16 v0, v21

    if-ge v0, v10, :cond_2f

    .line 2472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 2473
    .restart local v39    # "v":Landroid/widget/TextView;
    invoke-virtual/range {v39 .. v40}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2474
    const-string v3, ""

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2475
    const/16 v3, 0x8

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2471
    :goto_11
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 2477
    :cond_2e
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11

    .line 2482
    .end local v39    # "v":Landroid/widget/TextView;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2484
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 2485
    .local v24, "statusLabel":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2486
    .local v11, "carrierLabel":Landroid/widget/TextView;
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshing carrier name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    sget-object v3, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2489
    const/16 v20, 0x0

    .line 2493
    .local v20, "hasChanged":Z
    if-eqz v24, :cond_30

    .line 2494
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0b0109

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 2495
    const v3, 0x7f0b0109

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2496
    const/16 v20, 0x1

    .line 2499
    :cond_30
    if-eqz v11, :cond_31

    .line 2500
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2501
    const v3, 0x7f0b0109

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2502
    const/16 v20, 0x1

    .line 2506
    :cond_31
    if-eqz v20, :cond_32

    .line 2507
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOperatorInfo()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2559
    .end local v11    # "carrierLabel":Landroid/widget/TextView;
    .end local v20    # "hasChanged":Z
    .end local v24    # "statusLabel":Landroid/widget/TextView;
    :cond_32
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2560
    const/16 v21, 0x0

    :goto_13
    move/from16 v0, v21

    if-ge v0, v10, :cond_39

    .line 2561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 2562
    .restart local v39    # "v":Landroid/widget/TextView;
    if-nez v18, :cond_38

    .line 2563
    const/16 v3, 0x8

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2560
    :goto_14
    add-int/lit8 v21, v21, 0x1

    goto :goto_13

    .line 2510
    .end local v39    # "v":Landroid/widget/TextView;
    .restart local v11    # "carrierLabel":Landroid/widget/TextView;
    .restart local v24    # "statusLabel":Landroid/widget/TextView;
    :cond_33
    const/16 v20, 0x0

    .line 2511
    .restart local v20    # "hasChanged":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_32

    .line 2512
    if-eqz v24, :cond_34

    .line 2513
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 2514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2515
    const/16 v20, 0x1

    .line 2518
    :cond_34
    if-eqz v11, :cond_35

    .line 2519
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 2520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2521
    const/16 v20, 0x1

    .line 2525
    :cond_35
    if-eqz v20, :cond_32

    .line 2526
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOperatorInfo()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    .line 2530
    .end local v11    # "carrierLabel":Landroid/widget/TextView;
    .end local v20    # "hasChanged":Z
    .end local v24    # "statusLabel":Landroid/widget/TextView;
    :catch_0
    move-exception v17

    .line 2531
    .local v17, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "refreshView: carrier labels and status labels are not added yet."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2534
    .end local v17    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2535
    const/16 v21, 0x0

    :goto_15
    move/from16 v0, v21

    if-ge v0, v10, :cond_32

    .line 2536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 2537
    .restart local v39    # "v":Landroid/widget/TextView;
    sget-object v3, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2541
    const v3, 0x7f0b0109

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2535
    :goto_16
    add-int/lit8 v21, v21, 0x1

    goto :goto_15

    .line 2546
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2547
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshing carrier name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2565
    :cond_38
    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2566
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14

    .line 2569
    .end local v39    # "v":Landroid/widget/TextView;
    :cond_39
    return-void

    .line 2319
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0203ba -> :sswitch_0
        0x7f0203f5 -> :sswitch_0
        0x7f0203f7 -> :sswitch_0
        0x7f0203f8 -> :sswitch_0
        0x7f0203fa -> :sswitch_0
    .end sparse-switch

    .line 2159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2212
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setCarrierGemini(Lcom/android/systemui/statusbar/CarrierLabel;Lcom/android/systemui/statusbar/CarrierLabel;Landroid/view/View;)V
    .locals 1
    .param p1, "carrier1"    # Lcom/android/systemui/statusbar/CarrierLabel;
    .param p2, "carrier2"    # Lcom/android/systemui/statusbar/CarrierLabel;
    .param p3, "carrierDivider"    # Landroid/view/View;

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2811
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2813
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2814
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2815
    return-void
.end method

.method public setStatusViewGemini(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CarrierLabel;Lcom/android/systemui/statusbar/CarrierLabel;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "carrier1"    # Lcom/android/systemui/statusbar/CarrierLabel;
    .param p3, "carrier2"    # Lcom/android/systemui/statusbar/CarrierLabel;
    .param p4, "carrierDivider"    # Landroid/view/View;

    .prologue
    .line 2843
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewGemini:Landroid/view/ViewGroup;

    .line 2844
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2845
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2846
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2847
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusLabelDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2848
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusLabelDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    return-void
.end method

.method public updateKeyguardStatusBarView(Z)V
    .locals 4
    .param p1, "isKeyguardShow"    # Z

    .prologue
    .line 3071
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguard visibility updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsLidClosed:Z

    if-nez v1, :cond_0

    .line 3078
    sget-object v1, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3084
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3088
    .local v0, "maxWidth":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->adjustOperatorWidth(I)V

    .line 3090
    .end local v0    # "maxWidth":I
    :cond_0
    return-void

    .line 3086
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .restart local v0    # "maxWidth":I
    goto :goto_0
.end method

.method updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "showSpn"    # Z
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1819
    const-string v2, "CarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1823
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1827
    .local v0, "something":Z
    if-eqz p4, :cond_0

    .line 1828
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    const/4 v0, 0x1

    .line 1830
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:[Ljava/lang/String;

    aput-object v5, v2, p1

    .line 1848
    :goto_0
    return-void

    .line 1833
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1838
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    const/4 v0, 0x1

    .line 1841
    :cond_1
    if-eqz v0, :cond_2

    .line 1842
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1843
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting mNetworkName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1845
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:[Ljava/lang/String;

    aput-object v5, v2, p1

    .line 1846
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "setting networkName null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNetworkNameEx(ILjava/lang/String;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "numberic"    # Ljava/lang/String;

    .prologue
    .line 947
    if-eqz p2, :cond_1

    .line 949
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "locCountry":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, "locLanguage":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MzOperatorHelper;->getInstance()Landroid/telephony/MzOperatorHelper;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/telephony/MzOperatorHelper;->getOperatorAlphaLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, "locAlphaLong":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 962
    const-string v4, "45403"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "45404"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "45406"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "45412"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 964
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aput-object v0, v4, p1

    .line 965
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperatorAlphaLong = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    .end local v0    # "locAlphaLong":Ljava/lang/String;
    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 968
    .restart local v0    # "locAlphaLong":Ljava/lang/String;
    .restart local v1    # "locCountry":Ljava/lang/String;
    .restart local v2    # "locLanguage":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->appendSurfix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    goto :goto_0

    .line 989
    .end local v0    # "locAlphaLong":Ljava/lang/String;
    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 971
    .restart local v0    # "locAlphaLong":Ljava/lang/String;
    .restart local v1    # "locCountry":Ljava/lang/String;
    .restart local v2    # "locLanguage":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 972
    .local v3, "operatorAlphaLong":Ljava/lang/String;
    const-string v4, "45403"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "45404"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "45406"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "45412"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 974
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aput-object v3, v4, p1

    .line 975
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperatorAlphaLong = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 978
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->appendSurfix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public updateOperatorInfo()V
    .locals 3

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDividerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOperatorInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 2896
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusLabelDividerList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOperatorInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 2897
    return-void
.end method

.method public updateOperatorInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 16
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/CarrierLabel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2906
    .local p1, "carrierList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/CarrierLabel;>;"
    .local p2, "dividerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_1

    .line 3048
    :cond_0
    :goto_0
    return-void

    .line 2910
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2911
    .local v7, "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-nez v7, :cond_2

    goto :goto_0

    .line 2916
    .end local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2917
    .restart local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-eqz v7, :cond_4

    .line 2918
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    goto :goto_1

    .line 2922
    .end local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2923
    .local v9, "mDividerMemeber":Landroid/view/View;
    if-eqz v9, :cond_6

    .line 2924
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2928
    .end local v9    # "mDividerMemeber":Landroid/view/View;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWifiOnlyDevice()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2930
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2931
    .restart local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-eqz v7, :cond_8

    .line 2932
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    goto :goto_3

    .line 2941
    .end local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-nez v13, :cond_a

    sget-object v13, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2942
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2943
    .local v1, "defaultCarrierLabel":Lcom/android/systemui/statusbar/CarrierLabel;
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 2944
    const/16 v13, 0x11

    invoke-virtual {v1, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    goto/16 :goto_0

    .line 2949
    .end local v1    # "defaultCarrierLabel":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_b
    const/4 v10, 0x0

    .line 2951
    .local v10, "mNumOfSIM":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v5, v13, [I

    .line 2952
    .local v5, "insertedSim":[I
    const/4 v6, 0x0

    .line 2953
    .local v6, "mCarrierLeft":Lcom/android/systemui/statusbar/CarrierLabel;
    const/4 v8, 0x0

    .line 2954
    .local v8, "mCarrierRight":Lcom/android/systemui/statusbar/CarrierLabel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_11

    .line 2955
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2956
    .restart local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-eqz v7, :cond_e

    .line 2957
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getSlotId()I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/systemui/statusbar/SIMHelper;->isSimInserted(Landroid/content/Context;I)Z

    move-result v12

    .line 2968
    .local v12, "simInserted":Z
    if-eqz v12, :cond_10

    .line 2969
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 2970
    const/4 v13, 0x1

    aput v13, v5, v2

    .line 2971
    add-int/lit8 v10, v10, 0x1

    .line 2972
    const/4 v13, 0x1

    if-ne v10, v13, :cond_f

    .line 2973
    move-object v6, v7

    .line 2977
    :cond_c
    :goto_5
    const/4 v13, 0x2

    if-lt v10, v13, :cond_d

    add-int/lit8 v13, v2, -0x1

    if-ltz v13, :cond_d

    .line 2978
    add-int/lit8 v13, v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 2983
    :cond_d
    :goto_6
    const/16 v13, 0x11

    invoke-virtual {v7, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    .line 2954
    .end local v12    # "simInserted":Z
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2974
    .restart local v12    # "simInserted":Z
    :cond_f
    const/4 v13, 0x2

    if-ne v10, v13, :cond_c

    .line 2975
    move-object v8, v7

    goto :goto_5

    .line 2981
    :cond_10
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    goto :goto_6

    .line 2987
    .end local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    .end local v12    # "simInserted":Z
    :cond_11
    const/4 v13, 0x2

    if-ne v10, v13, :cond_13

    .line 2988
    if-nez p3, :cond_12

    .line 2989
    const v13, 0x800005

    invoke-virtual {v6, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    .line 2990
    const v13, 0x800003

    invoke-virtual {v8, v13}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    .line 3020
    :cond_12
    :goto_7
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_0

    .line 3022
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsLidClosed:Z

    if-eqz v13, :cond_19

    .line 3027
    sget-object v13, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 3028
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0004

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 3046
    .local v11, "maxWidth":I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->adjustOperatorWidth(I)V

    goto/16 :goto_0

    .line 2992
    .end local v11    # "maxWidth":I
    :cond_13
    if-nez v10, :cond_12

    .line 2994
    const/4 v4, 0x0

    .line 2995
    .local v4, "index":I
    const/4 v2, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_14

    .line 2996
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2997
    .restart local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/CarrierLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16

    .line 2998
    move v4, v2

    .line 3002
    .end local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_15

    .line 3003
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/CarrierLabel;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 3005
    :cond_15
    const-string v13, "StatusBar.NetworkController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateOperatorInfo, No SIM cards, force slotId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to visible."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2995
    .restart local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3029
    .end local v4    # "index":I
    .end local v7    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_17
    sget-object v13, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 3030
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0005

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto :goto_8

    .line 3032
    .end local v11    # "maxWidth":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0003

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto/16 :goto_8

    .line 3035
    .end local v11    # "maxWidth":I
    :cond_19
    sget-object v13, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 3041
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0002

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto/16 :goto_8

    .line 3043
    .end local v11    # "maxWidth":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0001

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto/16 :goto_8
.end method

.method updateServiceState(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 763
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateServiceState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 882
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0xa0a0139

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto :goto_0

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_2

    .line 782
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "sim card is unknown or not ready, does nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 831
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 833
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0xa0a00c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto :goto_0

    .line 868
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 869
    :cond_4
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "network name is null, find operator name in our own xml."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "num":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 872
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkNameGeminiEx(ILjava/lang/String;)V

    goto :goto_0

    .line 874
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkNameEx(ILjava/lang/String;)V

    goto :goto_0

    .line 878
    .end local v0    # "num":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    .line 879
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "use network name from framework directly."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting mCarrierName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
