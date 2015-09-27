.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImplTelecom.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/NetworkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$1;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$OperatorMap;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;
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

.field mCallState:[I

.field mCallingState:Z

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

.field mNonCallingSlot:I

.field mPhoneSignalIconId:[I

.field mPhoneState:[I

.field mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

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
    .line 88
    const-string v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->MEIZU_LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 202
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowPhoneRSSIForData:Z

    .line 123
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowAtLeastThreeGees:Z

    .line 124
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAlwaysShowCdmaRssi:Z

    .line 125
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    .line 126
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNonCallingSlot:I

    .line 127
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    .line 140
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    .line 141
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSWifiIconId:I

    .line 142
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivityIconId:I

    .line 143
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivity:I

    .line 146
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mBluetoothTethered:Z

    .line 147
    const v6, 0xa020341

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mBluetoothTetherIconId:I

    .line 151
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxSupported:Z

    .line 152
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsWimaxEnabled:Z

    .line 153
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxConnected:Z

    .line 154
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIdle:Z

    .line 155
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    .line 156
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxSignal:I

    .line 157
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxState:I

    .line 158
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxExtraState:I

    .line 162
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnected:Z

    .line 163
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectedNetworkType:I

    .line 165
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    .line 168
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    .line 169
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastAirplaneMode:Z

    .line 171
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLocale:Ljava/util/Locale;

    .line 172
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastLocale:Ljava/util/Locale;

    .line 176
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 177
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 178
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 179
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 180
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectionRateViews:Ljava/util/ArrayList;

    .line 181
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalClusters:Ljava/util/ArrayList;

    .line 182
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 185
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionIconId:I

    .line 186
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionOverlayIconId:I

    .line 187
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWifiIconId:I

    .line 188
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWimaxIconId:I

    .line 189
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastCombinedSignalIconId:I

    .line 192
    const-string v6, ""

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastCombinedLabel:Ljava/lang/String;

    .line 196
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataAndWifiStacked:Z

    .line 2899
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrier1:Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2900
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrier2:Lcom/android/systemui/statusbar/CarrierLabel;

    .line 2901
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierDivider:Landroid/view/View;

    .line 2981
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsLidClosed:Z

    .line 2982
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewGemini:Landroid/view/ViewGroup;

    .line 2983
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierList:Ljava/util/ArrayList;

    .line 2984
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDividerList:Ljava/util/ArrayList;

    .line 2985
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewList:Ljava/util/ArrayList;

    .line 2986
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusLabelDividerList:Ljava/util/ArrayList;

    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 206
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 208
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    .line 210
    const v6, 0x7f0a0004

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowPhoneRSSIForData:Z

    .line 211
    const v6, 0x7f0a0005

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowAtLeastThreeGees:Z

    .line 212
    const v6, 0xa0d0006

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAlwaysShowCdmaRssi:Z

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateWifiIcons()V

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateWimaxIcons()V

    .line 220
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SIMHelper;->getNumOfSim(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    .line 221
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    .line 222
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v7, 0x7f0b003d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkNameSeparator:Ljava/lang/String;

    .line 223
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v7, 0xa0a00c7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkNameDefault:Ljava/lang/String;

    .line 226
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Landroid/telephony/SignalStrength;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 227
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Landroid/telephony/ServiceState;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    .line 228
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneState:[I

    .line 229
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    .line 230
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallState:[I

    .line 231
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    .line 232
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataConnected:[Z

    .line 233
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 234
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataDirectionIconId:[I

    .line 235
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    .line 236
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 237
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataSignalIconId:[I

    .line 238
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionDataType:[Ljava/lang/String;

    .line 239
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkName:[Ljava/lang/String;

    .line 240
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStateExtra:[Ljava/lang/String;

    .line 241
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLockedReason:[Ljava/lang/String;

    .line 242
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    .line 243
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    .line 244
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    .line 245
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileActivityIconId:[I

    .line 246
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [[I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataIconList:[[I

    .line 247
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastPhoneSignalIconId:[I

    .line 248
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataTypeIconId:[I

    .line 249
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataConnected:[Z

    .line 250
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    new-array v6, v6, [Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    .line 253
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v3, v6, :cond_1

    .line 254
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aput v8, v6, v3

    .line 255
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallState:[I

    aput v8, v6, v3

    .line 256
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    aput v8, v6, v3

    .line 258
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    aput v8, v6, v3

    .line 259
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 260
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 261
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastPhoneSignalIconId:[I

    aput v9, v6, v3

    .line 262
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataTypeIconId:[I

    aput v9, v6, v3

    .line 263
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataConnected:[Z

    aput-boolean v8, v6, v3

    .line 264
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileActivityIconId:[I

    aput v8, v6, v3

    .line 265
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    aput v8, v6, v3

    .line 266
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataSignalIconId:[I

    aput v8, v6, v3

    .line 267
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataIconList:[[I

    sget-object v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v7, v7, v8

    aput-object v7, v6, v3

    .line 270
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isInvalidSim(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 271
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v7, v6, v3

    .line 275
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateCarrierText(I)V

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->convertSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    aput-object v7, v6, v3

    goto :goto_1

    .line 278
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHspaDataDistinguishable:Z

    .line 282
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 283
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;)V

    .line 284
    .local v2, "handler":Landroid/os/Handler;
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 285
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v5

    .line 286
    .local v5, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v5, :cond_2

    .line 287
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v2, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 291
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v6, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v6, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xa0d0007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxSupported:Z

    .line 304
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxSupported:Z

    if-eqz v6, :cond_3

    .line 305
    const-string v6, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v6, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v6, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    :cond_3
    const-string v6, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v6, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v6, "mz.action.demo.keyguard.lock"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateAirplaneMode()V

    .line 318
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastLocale:Ljava/util/Locale;

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isValidSlotId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method private adjustOperatorWidth(I)V
    .locals 5
    .param p1, "maxWidth"    # I

    .prologue
    const/4 v4, -0x2

    .line 3160
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3161
    const-string v1, "StatusBar.NetworkControllerTelecom"

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

    .line 3163
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewGemini:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3164
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewGemini:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 3165
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewGemini:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 3166
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3170
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewGemini:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3172
    .end local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 3168
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
    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "zh"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    const-string v1, "2G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1195
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
    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "zh"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    const-string v1, "3G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1177
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
    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "zh"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    const-string v1, "4G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1159
    :cond_0
    const-string v1, " 4G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendSurfix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;

    .prologue
    .line 1073
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1074
    :cond_0
    const/4 p2, 0x0

    .line 1093
    .end local p2    # "operator":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 1077
    .restart local p2    # "operator":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aget v0, v1, p1

    .line 1078
    .local v0, "tempDataNetType":I
    if-nez v0, :cond_3

    .line 1080
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    .line 1083
    :cond_3
    const-string v1, "StatusBar.NetworkControllerTelecom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appendSurfix("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): network type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    if-eqz v0, :cond_1

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isShow4G(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1089
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->append4GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1090
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isShow3G(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1091
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->append3GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1093
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->append2GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private convertSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3270
    packed-switch p1, :pswitch_data_0

    .line 3287
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3291
    .local v0, "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    return-object v0

    .line 3272
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3273
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3275
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3276
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3278
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3279
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3281
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3282
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3284
    .end local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 3285
    .restart local v0    # "s":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 3270
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
    .line 2798
    if-eqz p1, :cond_0

    .line 2799
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2801
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2806
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 2802
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2803
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 2806
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

    .line 1336
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v3, p1

    .line 1337
    .local v0, "tempServiceState":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 1352
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 1347
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

    .line 1342
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
    .line 2048
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 2049
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2059
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2053
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2054
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

    .line 2055
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2056
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 2059
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v1, p1

    .line 1332
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

.method private isInvalidSim(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1308
    const/4 v0, 0x0

    .line 1310
    .local v0, "invalid":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 1311
    .local v1, "operator":Ljava/lang/String;
    const-string v3, "StatusBar.NetworkControllerTelecom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInvalidSim: operator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1313
    if-nez p1, :cond_2

    .line 1314
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$OperatorMap;->isChinaMobile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$OperatorMap;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1316
    :cond_0
    const/4 v0, 0x1

    .line 1325
    :cond_1
    :goto_0
    const-string v3, "StatusBar.NetworkControllerTelecom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInvalidSim: sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return v0

    .line 1318
    :cond_2
    if-ne v2, p1, :cond_1

    .line 1319
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$OperatorMap;->isChinaTelecom(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1320
    const/4 v0, 0x1

    goto :goto_0

    .line 1325
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isShow3G(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aget v0, v1, p1

    .line 1104
    .local v0, "tempDataNetType":I
    if-nez v0, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    .line 1109
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1124
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1122
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1109
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isShow4G(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aget v0, v1, p1

    .line 1134
    .local v0, "tempDataNetType":I
    if-nez v0, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    .line 1139
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1143
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1141
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private isValidSlotId(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 3295
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

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

    .line 2976
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2977
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
    .line 1363
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLocale:Ljava/util/Locale;

    .line 1364
    const-string v0, "StatusBar.NetworkControllerTelecom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshing locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 5

    .prologue
    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v0, v2, :cond_1

    .line 323
    invoke-static {v0}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v1

    .line 324
    .local v1, "subId":I
    if-ltz v1, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;I)V

    aput-object v3, v2, v0

    .line 326
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    aget-object v3, v3, v0

    const/16 v4, 0x1e1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 332
    const-string v2, "StatusBar.NetworkControllerTelecom"

    const-string v3, "Register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_1

    .line 337
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

    .line 3300
    const-string v0, "StatusBar.NetworkControllerTelecom"

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

    .line 3302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object v4, v0, p1

    .line 3304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object v4, v0, p1

    .line 3306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aput v3, v0, p1

    .line 3307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    aput v3, v0, p1

    .line 3309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    aput v3, v0, p1

    .line 3310
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v0, v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$myPhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 340
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_1
    return-void
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1357
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    .line 1359
    const-string v0, "StatusBar.NetworkControllerTelecom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating airplane mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    return-void

    :cond_0
    move v0, v1

    .line 1357
    goto :goto_0
.end method

.method private updateCarrierText(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 919
    const v0, 0x104010c

    .line 973
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 974
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 975
    const-string v1, "StatusBar.NetworkControllerTelecom"

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

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    return-void

    .line 922
    :cond_1
    const-string v1, "StatusBar.NetworkControllerTelecom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText for slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 964
    if-nez p1, :cond_7

    .line 965
    const v0, 0x7f0b0101

    goto :goto_0

    .line 927
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isInvalidSim(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 928
    const v0, 0x7f0b00fb

    goto :goto_0

    .line 930
    :cond_2
    if-nez p1, :cond_3

    .line 931
    const v0, 0x7f0b0101

    goto :goto_0

    .line 933
    :cond_3
    const v0, 0x7f0b00fd

    .line 936
    goto/16 :goto_0

    .line 938
    :pswitch_2
    if-nez p1, :cond_4

    .line 939
    const v0, 0x7f0b0102

    goto/16 :goto_0

    .line 941
    :cond_4
    const v0, 0x7f0b00fe

    .line 943
    goto/16 :goto_0

    .line 945
    :pswitch_3
    if-nez p1, :cond_5

    .line 946
    const v0, 0x7f0b0103

    goto/16 :goto_0

    .line 948
    :cond_5
    const v0, 0x7f0b00ff

    .line 950
    goto/16 :goto_0

    .line 957
    :pswitch_4
    if-nez p1, :cond_6

    .line 958
    const v0, 0x7f0b0100

    goto/16 :goto_0

    .line 960
    :cond_6
    const v0, 0x7f0b00fc

    .line 962
    goto/16 :goto_0

    .line 967
    :cond_7
    const v0, 0x7f0b00fd

    goto/16 :goto_0

    .line 925
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2110
    const-string v7, "StatusBar.NetworkControllerTelecom"

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

    .line 2113
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2115
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 2118
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnected:Z

    .line 2120
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectionRateViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2121
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 2122
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectionRateViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2123
    .local v6, "v":Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnected:Z

    if-nez v7, :cond_2

    .line 2124
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2121
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    move v7, v9

    .line 2118
    goto :goto_0

    .line 2126
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "mz_current_network_speed"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v5, v8

    .line 2128
    .local v5, "isEnable":Z
    :goto_3
    if-eqz v5, :cond_0

    .line 2129
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .end local v5    # "isEnable":Z
    :cond_3
    move v5, v9

    .line 2126
    goto :goto_3

    .line 2133
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnected:Z

    if-eqz v7, :cond_5

    .line 2134
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectedNetworkType:I

    .line 2135
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2141
    :goto_4
    const-string v7, "inetCondition"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2144
    .local v2, "connectionStatus":I
    const-string v7, "StatusBar.NetworkControllerTelecom"

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

    .line 2145
    const-string v7, "StatusBar.NetworkControllerTelecom"

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

    .line 2148
    const/16 v7, 0x32

    if-le v2, v7, :cond_6

    :goto_5
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    .line 2150
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_7

    .line 2151
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mBluetoothTethered:Z

    .line 2157
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataNetType()V

    .line 2158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateWimaxIcons()V

    .line 2159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataIcon()V

    .line 2160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength()V

    .line 2161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateWifiIcons()V

    .line 2162
    return-void

    .line 2137
    .end local v2    # "connectionStatus":I
    :cond_5
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectedNetworkType:I

    .line 2138
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_4

    .restart local v2    # "connectionStatus":I
    :cond_6
    move v8, v9

    .line 2148
    goto :goto_5

    .line 2153
    :cond_7
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mBluetoothTethered:Z

    goto :goto_6
.end method

.method private final updateDataIcon()V
    .locals 2

    .prologue
    .line 1792
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 1793
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataIcon(I)V

    .line 1792
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1795
    :cond_0
    return-void
.end method

.method private final updateDataIcon(I)V
    .locals 14
    .param p1, "slotId"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1798
    const-string v7, "StatusBar.NetworkControllerTelecom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " updateDataIcon("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    const/4 v1, 0x0

    .line 1801
    .local v1, "iconId":I
    const/4 v6, 0x1

    .line 1807
    .local v6, "visible":Z
    sget-object v7, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1808
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNonCallingSlot:I

    if-ne p1, v7, :cond_1

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNonCallingSlot:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isRoaming(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1809
    iput-boolean v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    .line 1815
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 1816
    .local v0, "dataSub":I
    const-string v7, "StatusBar.NetworkControllerTelecom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDataIcon dataSub ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    if-eq p1, v0, :cond_2

    .line 1819
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataConnected:[Z

    aput-boolean v10, v7, p1

    .line 1821
    const-string v7, "StatusBar.NetworkControllerTelecom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDataIcon: SUB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not DDS.  Clear the mMSimDataConnected Flag and return"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :goto_1
    return-void

    .line 1811
    .end local v0    # "dataSub":I
    :cond_1
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    goto :goto_0

    .line 1832
    .restart local v0    # "dataSub":I
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    aget v4, v7, p1

    .line 1833
    .local v4, "tempDataState":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v7, p1

    .line 1834
    .local v5, "tempSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    aget v2, v7, p1

    .line 1835
    .local v2, "tempDataActivity":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataIconList:[[I

    aget-object v3, v7, p1

    .line 1838
    .local v3, "tempDataIconList":[I
    const-string v7, "StatusBar.NetworkControllerTelecom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDataState["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    aget v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const-string v7, "StatusBar.NetworkControllerTelecom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSimState["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const-string v7, "StatusBar.NetworkControllerTelecom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDataActivity["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    aget v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const-string v7, "StatusBar.NetworkControllerTelecom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDataIconList["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataIconList:[[I

    aget-object v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isCdma(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1846
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v7, :cond_6

    .line 1848
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->hasService(I)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v4, v11, :cond_5

    .line 1849
    packed-switch v2, :pswitch_data_0

    .line 1860
    aget v1, v3, v10

    .line 1863
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataDirectionIconId:[I

    aput v1, v7, p1

    .line 1898
    :goto_3
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    if-eqz v7, :cond_4

    .line 1899
    const/4 v1, 0x0

    .line 1902
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataDirectionIconId:[I

    aput v1, v7, p1

    .line 1903
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataConnected:[Z

    aput-boolean v6, v7, p1

    .line 1905
    const-string v7, "StatusBar.NetworkControllerTelecom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting mDataDirectionIconId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataDirectionIconId:[I

    aget v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const-string v7, "StatusBar.NetworkControllerTelecom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting mDataConnected["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataConnected:[Z

    aget-boolean v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1851
    :pswitch_0
    aget v1, v3, v12

    .line 1852
    goto :goto_2

    .line 1854
    :pswitch_1
    aget v1, v3, v11

    .line 1855
    goto :goto_2

    .line 1857
    :pswitch_2
    aget v1, v3, v13

    .line 1858
    goto :goto_2

    .line 1865
    :cond_5
    const/4 v1, 0x0

    .line 1866
    const/4 v6, 0x0

    goto :goto_3

    .line 1869
    :cond_6
    const v1, 0x7f0203be

    .line 1870
    const/4 v6, 0x0

    goto :goto_3

    .line 1874
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->hasService(I)Z

    move-result v7

    if-eqz v7, :cond_8

    if-ne v4, v11, :cond_8

    .line 1875
    packed-switch v2, :pswitch_data_1

    .line 1889
    aget v1, v3, v10

    .line 1890
    goto :goto_3

    .line 1877
    :pswitch_3
    aget v1, v3, v12

    .line 1878
    goto :goto_3

    .line 1880
    :pswitch_4
    aget v1, v3, v11

    .line 1881
    goto :goto_3

    .line 1883
    :pswitch_5
    aget v1, v3, v13

    .line 1884
    goto/16 :goto_3

    .line 1886
    :pswitch_6
    aget v1, v3, v10

    .line 1887
    goto/16 :goto_3

    .line 1893
    :cond_8
    const/4 v1, 0x0

    .line 1894
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1849
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1875
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 2

    .prologue
    .line 1532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 1533
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataNetType(I)V

    .line 1532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1535
    :cond_0
    return-void
.end method

.method private final updateDataNetType(I)V
    .locals 14
    .param p1, "slotId"    # I

    .prologue
    const v13, 0x7f0b008a

    const v12, 0x7f02007a

    const/4 v11, 0x0

    const v10, 0x7f0b008f

    const v9, 0x7f0b008d

    .line 1538
    const-string v6, "StatusBar.NetworkControllerTelecom"

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

    .line 1540
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aget v3, v6, p1

    .line 1541
    .local v3, "tempDataNetType":I
    if-nez v3, :cond_0

    .line 1543
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .line 1545
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    aget v4, v6, p1

    .line 1547
    .local v4, "tempDataState":I
    const-string v6, "StatusBar.NetworkControllerTelecom"

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

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const-string v6, "StatusBar.NetworkControllerTelecom"

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

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const-string v1, ""

    .line 1552
    .local v1, "tempContentDescriptionDataType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1558
    .local v5, "tempDataTypeIconId":I
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1559
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNonCallingSlot:I

    if-ne p1, v6, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNonCallingSlot:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isRoaming(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1560
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    .line 1566
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsWimaxEnabled:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxConnected:Z

    if-eqz v6, :cond_5

    .line 1568
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1569
    .local v2, "tempDataIconList":[I
    const v5, 0x7f0203aa

    .line 1570
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1571
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1710
    :goto_1
    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1711
    packed-switch v3, :pswitch_data_0

    .line 1736
    :pswitch_0
    const/4 v5, 0x0

    .line 1751
    :cond_2
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    if-eqz v6, :cond_3

    .line 1752
    const/4 v5, 0x0

    .line 1767
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionDataType:[Ljava/lang/String;

    aput-object v1, v6, p1

    .line 1768
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    aput v5, v6, p1

    .line 1769
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataIconList:[[I

    aput-object v2, v6, p1

    .line 1771
    const-string v6, "StatusBar.NetworkControllerTelecom"

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

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const-string v6, "StatusBar.NetworkControllerTelecom"

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

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataIconList:[[I

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    return-void

    .line 1562
    .end local v2    # "tempDataIconList":[I
    :cond_4
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    goto/16 :goto_0

    .line 1574
    :cond_5
    packed-switch v3, :pswitch_data_1

    .line 1690
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_d

    .line 1691
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1692
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f02039f

    .line 1693
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1694
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1576
    .end local v2    # "tempDataIconList":[I
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_6

    .line 1577
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1578
    .restart local v2    # "tempDataIconList":[I
    const/4 v5, 0x0

    .line 1579
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1580
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1582
    goto/16 :goto_1

    .line 1587
    .end local v2    # "tempDataIconList":[I
    :cond_6
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_7

    .line 1588
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1589
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f02039c

    .line 1590
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1591
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0093

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1593
    goto/16 :goto_1

    .line 1598
    .end local v2    # "tempDataIconList":[I
    :cond_7
    :pswitch_4
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1599
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f020393

    .line 1600
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1601
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1603
    goto/16 :goto_1

    .line 1608
    .end local v2    # "tempDataIconList":[I
    :pswitch_5
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHspaDataDistinguishable:Z

    if-eqz v6, :cond_8

    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1609
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1610
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f0203a2

    .line 1611
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1612
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v7, 0x7f0b008e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1615
    .end local v2    # "tempDataIconList":[I
    :cond_8
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1616
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f020393

    .line 1617
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1618
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1621
    goto/16 :goto_1

    .line 1626
    .end local v2    # "tempDataIconList":[I
    :pswitch_6
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHspaDataDistinguishable:Z

    if-eqz v6, :cond_9

    .line 1627
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1628
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f0203a4

    .line 1629
    const v6, 0x7f02008c

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1630
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v7, 0x7f0b008e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1633
    .end local v2    # "tempDataIconList":[I
    :cond_9
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1634
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f020393

    .line 1635
    iput v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1636
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1639
    goto/16 :goto_1

    .line 1641
    .end local v2    # "tempDataIconList":[I
    :pswitch_7
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_a

    .line 1643
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1644
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f020390

    .line 1645
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1646
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0091

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1648
    goto/16 :goto_1

    .line 1653
    .end local v2    # "tempDataIconList":[I
    :cond_a
    :pswitch_8
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowAtLeastThreeGees:Z

    if-nez v6, :cond_b

    .line 1654
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1655
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f020390

    .line 1656
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1657
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0091

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1659
    goto/16 :goto_1

    .line 1667
    .end local v2    # "tempDataIconList":[I
    :cond_b
    :pswitch_9
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1668
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f020393

    .line 1669
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1670
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1672
    goto/16 :goto_1

    .line 1674
    .end local v2    # "tempDataIconList":[I
    :pswitch_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1675
    .local v0, "show4GforLTE":Z
    if-eqz v0, :cond_c

    .line 1676
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1677
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f020397

    .line 1678
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1679
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1682
    .end local v2    # "tempDataIconList":[I
    :cond_c
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1683
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f0203ae

    .line 1684
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1685
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0090

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1688
    goto/16 :goto_1

    .line 1697
    .end local v0    # "show4GforLTE":Z
    .end local v2    # "tempDataIconList":[I
    :cond_d
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1698
    .restart local v2    # "tempDataIconList":[I
    const v5, 0x7f0203a9

    .line 1699
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1700
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1722
    :pswitch_b
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1723
    const v5, 0x7f020393

    .line 1724
    iput v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1725
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1727
    goto/16 :goto_2

    .line 1729
    :pswitch_c
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v2, v6, v7

    .line 1730
    const v5, 0x7f020397

    .line 1731
    const v6, 0x7f02007c

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    .line 1732
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1734
    goto/16 :goto_2

    .line 1711
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 1574
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
    .line 1039
    if-eqz p2, :cond_0

    .line 1041
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "locCountry":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1045
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

    .line 1049
    .local v0, "locAlphaExtraShort":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1050
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aput-object v0, v4, p1

    .line 1051
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

    .line 1052
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperatorAlphaExtraShort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local v0    # "locAlphaExtraShort":Ljava/lang/String;
    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1054
    .restart local v0    # "locAlphaExtraShort":Ljava/lang/String;
    .restart local v1    # "locCountry":Ljava/lang/String;
    .restart local v2    # "locLanguage":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 1055
    .local v3, "operatorAlphaLong":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aput-object v3, v4, p1

    .line 1056
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

    .line 1057
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperatorAlphaLong = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1059
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
    .line 1202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStateExtra:[Ljava/lang/String;

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLockedReason:[Ljava/lang/String;

    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStateExtra:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLockedReason:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateSimState(ILjava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method private final updateSimState(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "stateExtra"    # Ljava/lang/String;
    .param p3, "lockedReason"    # Ljava/lang/String;

    .prologue
    .line 1215
    const-string v2, "StatusBar.NetworkControllerTelecom"

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

    .line 1217
    const/4 v1, 0x0

    .line 1218
    .local v1, "tempSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v0, 0x0

    .line 1220
    .local v0, "tempCarrierName":Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1221
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1222
    const-string v2, "PERM_DISABLED"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1224
    if-nez p1, :cond_3

    .line 1225
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0100

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    :goto_0
    if-eqz v1, :cond_1

    .line 1294
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v2, p1

    .line 1295
    const-string v2, "StatusBar.NetworkControllerTelecom"

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

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 1298
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateServiceState(I)V

    .line 1301
    :cond_1
    if-eqz v0, :cond_2

    .line 1302
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aput-object v0, v2, p1

    .line 1303
    const-string v2, "StatusBar.NetworkControllerTelecom"

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

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_2
    return-void

    .line 1228
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1232
    :cond_4
    if-nez p1, :cond_5

    .line 1233
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0101

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1236
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1241
    :cond_6
    const-string v2, "READY"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "IMSI"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "LOADED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1244
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isInvalidSim(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1249
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1250
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1253
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 1256
    :cond_9
    const-string v2, "LOCKED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1260
    const-string v2, "PERM_DISABLED"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1261
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1262
    const-string v2, "StatusBar.NetworkControllerTelecom"

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

    .line 1264
    :cond_a
    const-string v2, "PIN"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1265
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1266
    if-nez p1, :cond_b

    .line 1267
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0102

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1270
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1274
    :cond_c
    const-string v2, "PUK"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1275
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1276
    if-nez p1, :cond_d

    .line 1277
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0103

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1280
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1285
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1286
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0104

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1290
    :cond_f
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0
.end method

.method private final updateTelephonySignalStrength()V
    .locals 2

    .prologue
    .line 1368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 1369
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength(I)V

    .line 1368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1371
    :cond_0
    return-void
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 16
    .param p1, "slotId"    # I

    .prologue
    .line 1374
    const-string v11, "StatusBar.NetworkControllerTelecom"

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

    .line 1375
    const/4 v1, 0x0

    .line 1377
    .local v1, "handled":Z
    const/4 v7, 0x0

    .line 1378
    .local v7, "tempPhoneSignalIconId":I
    const/4 v5, 0x0

    .line 1379
    .local v5, "tempDataSignalIconId":I
    const/4 v8, 0x0

    .line 1380
    .local v8, "tempServiceState":Landroid/telephony/ServiceState;
    const/4 v9, 0x0

    .line 1381
    .local v9, "tempSignalStrength":Landroid/telephony/SignalStrength;
    const-string v4, ""

    .line 1382
    .local v4, "tempContentDescriptionPhoneSignal":Ljava/lang/String;
    const/4 v11, 0x2

    new-array v6, v11, [I

    fill-array-data v6, :array_0

    .line 1385
    .local v6, "tempLastSignalLevel":[I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v9, v11, p1

    .line 1386
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v8, v11, p1

    .line 1387
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v10, v11, p1

    .line 1389
    .local v10, "tempSimState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v11, "StatusBar.NetworkControllerTelecom"

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

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const-string v11, "StatusBar.NetworkControllerTelecom"

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

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    const-string v11, "StatusBar.NetworkControllerTelecom"

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

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    sget-object v11, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1399
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNonCallingSlot:I

    move/from16 v0, p1

    if-ne v0, v11, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNonCallingSlot:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isRoaming(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1400
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    .line 1409
    :cond_0
    :goto_0
    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v11, :cond_1

    .line 1410
    sget-object v11, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1411
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x5

    aget v5, v11, v12

    move v7, v5

    .line 1419
    :goto_1
    const/4 v1, 0x1

    .line 1422
    :cond_1
    if-nez v1, :cond_2

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v11, :cond_2

    .line 1423
    sget-object v11, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1424
    const v5, 0x7f0203f9

    move v7, v5

    .line 1428
    :goto_2
    const/4 v1, 0x1

    .line 1431
    :cond_2
    if-nez v1, :cond_3

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v11, :cond_3

    .line 1432
    sget-object v11, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1433
    const v5, 0x7f0203bd

    move v7, v5

    .line 1437
    :goto_3
    const/4 v1, 0x1

    .line 1440
    :cond_3
    if-nez v1, :cond_5

    .line 1441
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->hasService(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    if-eqz v11, :cond_c

    .line 1442
    :cond_4
    const-string v11, "StatusBar.NetworkControllerTelecom"

    const-string v12, "updateTelephonySignalStrength: !hasService()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    sget-object v11, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1457
    const v7, 0x7f0203bd

    .line 1458
    const v5, 0x7f0203bd

    .line 1463
    :goto_4
    const v11, 0x7f020091

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSPhoneSignalIconId:I

    .line 1523
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataSignalIconId:[I

    aput v5, v11, p1

    .line 1524
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aput-object v4, v11, p1

    .line 1525
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    aput v7, v11, p1

    .line 1527
    const-string v11, "StatusBar.NetworkControllerTelecom"

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

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataSignalIconId:[I

    aget v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const-string v11, "StatusBar.NetworkControllerTelecom"

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

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    aget v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void

    .line 1402
    :cond_6
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallingState:Z

    goto/16 :goto_0

    .line 1413
    :cond_7
    sget-object v11, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1414
    const v5, 0x7f0203fb

    move v7, v5

    goto/16 :goto_1

    .line 1416
    :cond_8
    const v5, 0x7f0203fa

    move v7, v5

    goto/16 :goto_1

    .line 1426
    :cond_9
    const v5, 0x7f0203f8

    move v7, v5

    goto/16 :goto_2

    .line 1435
    :cond_a
    const v5, 0x7f0203ba

    move v7, v5

    goto/16 :goto_3

    .line 1460
    :cond_b
    const v7, 0x7f0203ba

    .line 1461
    const v5, 0x7f0203ba

    goto/16 :goto_4

    .line 1474
    :cond_c
    if-nez v9, :cond_d

    .line 1475
    const-string v11, "StatusBar.NetworkControllerTelecom"

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

    .line 1476
    const v7, 0x7f0203e7

    .line 1477
    const v11, 0x7f020091

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSPhoneSignalIconId:I

    .line 1478
    const v5, 0x7f0203e7

    .line 1479
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 1484
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isCdma(I)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAlwaysShowCdmaRssi:Z

    if-eqz v11, :cond_e

    .line 1485
    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .local v2, "iconLevel":I
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastSignalLevel:I

    .line 1486
    const-string v11, "StatusBar.NetworkControllerTelecom"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mAlwaysShowCdmaRssi="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " set to cdmaLevel="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " instead of level="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isCdma(I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1497
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isCdmaEri(I)Z

    move-result v11

    if-eqz v11, :cond_f

    sget-object v11, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_f

    .line 1498
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v3, v11, v12

    .line 1510
    .local v3, "iconList":[I
    :goto_7
    aget v7, v3, v2

    .line 1511
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v11, v11, v12

    aget v11, v11, v2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSPhoneSignalIconId:I

    .line 1513
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v12, v12, v2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1518
    move v5, v7

    goto/16 :goto_5

    .line 1490
    .end local v2    # "iconLevel":I
    .end local v3    # "iconList":[I
    :cond_e
    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    .restart local v2    # "iconLevel":I
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastSignalLevel:I

    goto :goto_6

    .line 1500
    :cond_f
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v3, v11, v12

    .restart local v3    # "iconList":[I
    goto :goto_7

    .line 1504
    .end local v3    # "iconList":[I
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v11

    if-eqz v11, :cond_11

    sget-object v11, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_11

    .line 1505
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v3, v11, v12

    .restart local v3    # "iconList":[I
    goto :goto_7

    .line 1507
    .end local v3    # "iconList":[I
    :cond_11
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v3, v11, v12

    .restart local v3    # "iconList":[I
    goto :goto_7

    .line 1382
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

    .line 2030
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 2031
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    .line 2032
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSWifiIconId:I

    .line 2033
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWifi:Ljava/lang/String;

    .line 2045
    :goto_0
    return-void

    .line 2036
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataAndWifiStacked:Z

    if-eqz v0, :cond_1

    .line 2037
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    .line 2038
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSWifiIconId:I

    .line 2043
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 2040
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const v0, 0x7f02040a

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    .line 2041
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    const v1, 0x7f0200a0

    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSWifiIconId:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2040
    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1970
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1972
    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiEnabled:Z

    .line 2026
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateWifiIcons()V

    .line 2027
    return-void

    :cond_1
    move v7, v8

    .line 1972
    goto :goto_0

    .line 1975
    :cond_2
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1979
    const-string v9, "networkInfo"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1981
    .local v3, "inf":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_3

    .line 1982
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnecting:Z

    .line 1983
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalClusters:Ljava/util/ArrayList;

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

    .line 1984
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_2

    .line 1987
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnecting:Z

    .line 1988
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalClusters:Ljava/util/ArrayList;

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

    .line 1989
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_3

    .line 1993
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    :cond_4
    const-string v9, "networkInfo"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 1995
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    .line 1996
    .local v6, "wasConnected":Z
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_4
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    .line 1998
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-eqz v7, :cond_8

    if-nez v6, :cond_8

    .line 2000
    const-string v7, "wifiInfo"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiInfo;

    .line 2001
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    if-nez v4, :cond_5

    .line 2002
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 2004
    :cond_5
    if-eqz v4, :cond_7

    .line 2005
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .end local v4    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    move v7, v8

    .line 1996
    goto :goto_4

    .line 2007
    .restart local v4    # "info":Landroid/net/wifi/WifiInfo;
    :cond_7
    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_1

    .line 2009
    .end local v4    # "info":Landroid/net/wifi/WifiInfo;
    :cond_8
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-nez v7, :cond_0

    .line 2010
    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_1

    .line 2012
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "inf":Landroid/net/NetworkInfo;
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "wasConnected":Z
    :cond_9
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2013
    const-string v7, "newRssi"

    const/16 v9, -0xc8

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiRssi:I

    .line 2017
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiRssi:I

    const/16 v9, -0x64

    if-gt v7, v9, :cond_a

    .line 2018
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLevel:I

    goto/16 :goto_1

    .line 2020
    :cond_a
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiRssi:I

    sget v8, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLevel:I

    goto/16 :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 2089
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 2090
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 2091
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 2092
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    .line 2095
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWimax:Ljava/lang/String;

    .line 2104
    :goto_1
    return-void

    .line 2094
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    goto :goto_0

    .line 2098
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    .line 2099
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 2102
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2065
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2066
    .local v0, "action":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxConnected:Z

    .line 2067
    .local v1, "wasConnected":Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2068
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2070
    .local v2, "wimaxStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsWimaxEnabled:Z

    .line 2084
    .end local v2    # "wimaxStatus":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataNetType()V

    .line 2085
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateWimaxIcons()V

    .line 2086
    return-void

    .restart local v2    # "wimaxStatus":I
    :cond_1
    move v3, v4

    .line 2070
    goto :goto_0

    .line 2072
    .end local v2    # "wimaxStatus":I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2073
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxSignal:I

    goto :goto_1

    .line 2074
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2075
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxState:I

    .line 2077
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxExtraState:I

    .line 2080
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxConnected:Z

    .line 2082
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 2080
    goto :goto_2

    :cond_5
    move v3, v4

    .line 2082
    goto :goto_3
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public addConnectionRateView(Lcom/android/systemui/statusbar/ConnectionRateView;)V
    .locals 1
    .param p1, "v"    # Lcom/android/systemui/statusbar/ConnectionRateView;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectionRateViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 387
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 382
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 21
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 2818
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMode:Z

    if-nez v3, :cond_1

    const-string v3, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2819
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMode:Z

    .line 2820
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLevel:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoWifiLevel:I

    .line 2821
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoInetCondition:I

    .line 2822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoDataTypeIconId:I

    .line 2823
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastSignalLevel:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMobileLevel:I

    .line 2897
    :cond_0
    return-void

    .line 2824
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMode:Z

    if-eqz v3, :cond_2

    const-string v3, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2825
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMode:Z

    .line 2826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalClusters:Ljava/util/ArrayList;

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

    .line 2827
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_0

    .line 2829
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMode:Z

    if-eqz v3, :cond_0

    const-string v3, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2830
    const-string v3, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2831
    .local v13, "airplane":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2832
    const-string v3, "show"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2833
    .local v2, "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalClusters:Ljava/util/ArrayList;

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

    .line 2834
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    const v3, 0x7f0203f2

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_1

    .line 2837
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v2    # "show":Z
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v3, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2838
    .local v15, "fully":Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 2839
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoInetCondition:I

    .line 2841
    :cond_4
    const-string v3, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2842
    .local v20, "wifi":Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 2843
    const-string v3, "show"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2844
    .restart local v2    # "show":Z
    const-string v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2845
    .local v18, "level":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 2846
    const-string v3, "null"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, -0x1

    :goto_3
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoWifiLevel:I

    .line 2849
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoWifiLevel:I

    if-gez v3, :cond_8

    const v4, 0x7f02040a

    .line 2851
    .local v4, "iconId":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalClusters:Ljava/util/ArrayList;

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

    .line 2852
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "Demo"

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZZIILjava/lang/String;)V

    goto :goto_5

    .line 2839
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v2    # "show":Z
    .end local v4    # "iconId":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "level":Ljava/lang/String;
    .end local v20    # "wifi":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 2846
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

    .line 2849
    :cond_8
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoInetCondition:I

    aget-object v3, v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoWifiLevel:I

    aget v4, v3, v5

    goto :goto_4

    .line 2860
    .end local v2    # "show":Z
    .end local v18    # "level":Ljava/lang/String;
    :cond_9
    const-string v3, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2861
    .local v19, "mobile":Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 2862
    const-string v3, "show"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2863
    .restart local v2    # "show":Z
    const-string v3, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2864
    .local v14, "datatype":Ljava/lang/String;
    if-eqz v14, :cond_a

    .line 2865
    const-string v3, "1x"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const v3, 0x7f0203a8

    :goto_6
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoDataTypeIconId:I

    .line 2877
    :cond_a
    sget-object v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 2878
    .local v17, "icons":[[I
    const-string v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2879
    .restart local v18    # "level":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 2880
    const-string v3, "null"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, -0x1

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMobileLevel:I

    .line 2883
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMobileLevel:I

    if-gez v3, :cond_15

    const v4, 0x7f0203f3

    .line 2885
    .restart local v4    # "iconId":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalClusters:Ljava/util/ArrayList;

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

    .line 2886
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoDataTypeIconId:I

    const-string v11, "Demo"

    const-string v12, "Demo"

    move-object v5, v1

    move v7, v2

    move v8, v4

    invoke-interface/range {v5 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 2865
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

    .line 2880
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

    .line 2883
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoInetCondition:I

    aget-object v3, v17, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMobileLevel:I

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

    .line 2666
    const-string v1, "NetworkController state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2667
    const-string v2, "  %s network type %d (%s)"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnected:Z

    if-eqz v1, :cond_0

    const-string v1, "CONNECTED"

    :goto_0
    aput-object v1, v3, v4

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectedNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2670
    const-string v1, "  - telephony ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v0, v1, :cond_1

    .line 2673
    const-string v1, "====== SlotId: %d ======"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2674
    const-string v1, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->hasVoiceCallingFeature(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2676
    const-string v1, "  hasService()="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2677
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->hasService(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2678
    const-string v1, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2679
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2680
    const-string v1, "  mDataConnected="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2681
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataConnected:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2682
    const-string v1, "  mSimState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2683
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2684
    const-string v1, "  mPhoneState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2685
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneState:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2686
    const-string v1, "  mDataState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2687
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2688
    const-string v1, "  mDataActivity="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2689
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2690
    const-string v1, "  mDataNetType="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2691
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2692
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2693
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataNetType:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    const-string v1, "  mServiceState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2695
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2696
    const-string v1, "  mSignalStrength="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2697
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2698
    const-string v1, "  mLastSignalLevel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2699
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastSignalLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2700
    const-string v1, "  mCarrierName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2701
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2702
    const-string v1, "  mNetworkNameDefault="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2703
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2704
    const-string v1, "  mNetworkNameSeparator="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2705
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2706
    const-string v1, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2707
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2708
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2709
    const-string v1, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2710
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSPhoneSignalIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2711
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2712
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2713
    const-string v1, "  mDataDirectionIconId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2714
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataDirectionIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2715
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2716
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataDirectionIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2717
    const-string v1, "  mDataSignalIconId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2718
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataSignalIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2719
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2720
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataSignalIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2721
    const-string v1, "  mDataTypeIconId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2722
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2723
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2724
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    const-string v1, "  mQSDataTypeIconId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2726
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2727
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2728
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2730
    const-string v1, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2731
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastPhoneSignalIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2732
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2733
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastPhoneSignalIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2735
    const-string v1, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2736
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataTypeIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2737
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2738
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataTypeIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2672
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2667
    .end local v0    # "i":I
    :cond_0
    const-string v1, "DISCONNECTED"

    goto/16 :goto_0

    .line 2741
    .restart local v0    # "i":I
    :cond_1
    const-string v1, "  - wifi ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2742
    const-string v1, "  mWifiEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2743
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2744
    const-string v1, "  mWifiConnected="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2745
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2746
    const-string v1, "  mWifiRssi="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2747
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiRssi:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2748
    const-string v1, "  mWifiLevel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2749
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2750
    const-string v1, "  mWifiSsid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2751
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2752
    const-string v1, "  mWifiIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2754
    const-string v1, "  mQSWifiIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSWifiIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2756
    const-string v1, "  mWifiActivity="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2757
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivity:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2759
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxSupported:Z

    if-eqz v1, :cond_2

    .line 2760
    const-string v1, "  - wimax ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2761
    const-string v1, "  mIsWimaxEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2762
    const-string v1, "  mWimaxConnected="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxConnected:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2763
    const-string v1, "  mWimaxIdle="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIdle:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2764
    const-string v1, "  mWimaxIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2766
    const-string v1, "  mWimaxSignal=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxSignal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2767
    const-string v1, "  mWimaxState=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2768
    const-string v1, "  mWimaxExtraState=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxExtraState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2771
    :cond_2
    const-string v1, "  - Bluetooth ----"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2772
    const-string v1, "  mBtReverseTethered="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2773
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mBluetoothTethered:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2775
    const-string v1, "  - connectivity ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2776
    const-string v1, "  mInetCondition="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2777
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mInetCondition:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2779
    const-string v1, "  - icons ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2780
    const-string v1, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2781
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2782
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2783
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2784
    const-string v1, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2785
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWifiIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2786
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2787
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWifiIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    const-string v1, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2789
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastCombinedSignalIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2790
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2791
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2792
    const-string v1, "  mLastCombinedLabel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2793
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2794
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2795
    return-void
.end method

.method public hasDataConnection(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3230
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 3231
    .local v0, "dataSub":I
    const-string v2, "StatusBar.NetworkControllerTelecom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasDataConnection dataSub ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    if-eq p1, v0, :cond_1

    .line 3235
    const-string v2, "StatusBar.NetworkControllerTelecom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasDataConnection: SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not DDS.  return false."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    :cond_0
    :goto_0
    return v1

    .line 3240
    :cond_1
    const-string v2, "StatusBar.NetworkControllerTelecom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasDataConnection: SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is DDS.  check data connection state further."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataState:[I

    aget v2, v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

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

    .line 1776
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v4, p1

    .line 1778
    .local v2, "tempServiceState":Landroid/telephony/ServiceState;
    if-eqz v2, :cond_1

    .line 1779
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1780
    .local v0, "iconIndex":I
    if-eq v0, v3, :cond_1

    .line 1781
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1782
    .local v1, "iconMode":I
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    .line 1788
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isDataActivityDormant(I)Z
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3221
    add-int/lit8 v5, p1, 0x1

    rem-int/lit8 v2, v5, 0x2

    .line 3222
    .local v2, "theOtherSlot":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    aget v5, v5, p1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 3223
    .local v0, "isDormant":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCallState:[I

    aget v5, v5, v2

    if-eqz v5, :cond_1

    move v1, v3

    .line 3224
    .local v1, "isOtherSlotCalling":Z
    :goto_1
    const-string v5, "StatusBar.NetworkControllerTelecom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDataActivityDormant["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    const-string v5, "StatusBar.NetworkControllerTelecom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSlotCalling["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v3

    .end local v0    # "isDormant":Z
    .end local v1    # "isOtherSlotCalling":Z
    :cond_0
    move v0, v4

    .line 3222
    goto :goto_0

    .restart local v0    # "isDormant":Z
    :cond_1
    move v1, v4

    .line 3223
    goto :goto_1

    .restart local v1    # "isOtherSlotCalling":Z
    :cond_2
    move v3, v4

    .line 3226
    goto :goto_2
.end method

.method public isEmergencyOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLteOnlyMode(I)Z
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3252
    const-string v5, "StatusBar.NetworkControllerTelecom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLteOnlyMode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tdd_data_only"

    invoke-static {v5, v6, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3256
    .local v2, "tddOnly":I
    const-string v5, "StatusBar.NetworkControllerTelecom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tddOnly = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3259
    .local v0, "network":I
    const-string v5, "StatusBar.NetworkControllerTelecom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "network = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3260
    const/16 v5, 0xb

    if-ne v0, v5, :cond_0

    if-ne v2, v3, :cond_0

    .line 3264
    .end local v0    # "network":I
    .end local v2    # "tddOnly":I
    :goto_0
    return v3

    .restart local v0    # "network":I
    .restart local v2    # "tddOnly":I
    :cond_0
    move v3, v4

    .line 3260
    goto :goto_0

    .line 3261
    .end local v0    # "network":I
    .end local v2    # "tddOnly":I
    :catch_0
    move-exception v1

    .line 3262
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "StatusBar.NetworkControllerTelecom"

    const-string v5, "isLTEOnlyMode: Could not find PREFERRED_NETWORK_MODE!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 3264
    goto :goto_0
.end method

.method public isRoaming(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 3247
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isCdmaEri(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mTelephonymanager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getFirstSubInSlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 17
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    if-nez v1, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 429
    .local v2, "wifiEnabled":Z
    :goto_0
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiSsid:Ljava/lang/String;

    .line 431
    .local v7, "wifiDesc":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivity:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    :cond_1
    const/4 v4, 0x1

    .line 434
    .local v4, "wifiIn":Z
    :goto_2
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivity:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    :cond_2
    const/4 v5, 0x1

    .line 437
    .local v5, "wifiOut":Z
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    :cond_3
    const/4 v13, 0x1

    .line 443
    .local v13, "mobileIn":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    :cond_4
    const/4 v14, 0x1

    .line 446
    .local v14, "mobileOut":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 447
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    const/16 v16, 0x0

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 464
    return-void

    .line 428
    .end local v2    # "wifiEnabled":Z
    .end local v4    # "wifiIn":Z
    .end local v5    # "wifiOut":Z
    .end local v7    # "wifiDesc":Ljava/lang/String;
    .end local v13    # "mobileIn":Z
    .end local v14    # "mobileOut":Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 429
    .restart local v2    # "wifiEnabled":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 431
    .restart local v7    # "wifiDesc":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 434
    .restart local v4    # "wifiIn":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 440
    .restart local v5    # "wifiOut":Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 443
    .restart local v13    # "mobileIn":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 451
    .restart local v14    # "mobileOut":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxConnected:Z

    if-eqz v1, :cond_c

    .line 453
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v16, v1, v3

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 458
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

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
    .line 3207
    const-string v1, "StatusBar.NetworkControllerTelecom"

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

    .line 3208
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsLidClosed:Z

    .line 3210
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsLidClosed:Z

    if-eqz v1, :cond_0

    .line 3215
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3216
    .local v0, "maxWidth":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->adjustOperatorWidth(I)V

    .line 3218
    .end local v0    # "maxWidth":I
    :cond_0
    return-void

    .line 3208
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 472
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, "action":Ljava/lang/String;
    const-string v0, "StatusBar.NetworkControllerTelecom"

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

    .line 474
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

    .line 477
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateWifiState(Landroid/content/Intent;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    .line 588
    :cond_1
    :goto_0
    return-void

    .line 479
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    const-string v0, "slot"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 481
    .local v1, "slotId":I
    const-string v0, "StatusBar.NetworkControllerTelecom"

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

    .line 482
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateSimState(ILandroid/content/Intent;)V

    .line 484
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v7, v0, :cond_1

    .line 487
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength(I)V

    .line 488
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataIcon(I)V

    .line 489
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews(I)V

    .line 484
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 492
    .end local v1    # "slotId":I
    .end local v7    # "i":I
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    const-string v0, "subscription"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 495
    .local v11, "subId":I
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 496
    .restart local v1    # "slotId":I
    const-string v0, "StatusBar.NetworkControllerTelecom"

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

    .line 497
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
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

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V

    .line 503
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateServiceState(I)V

    .line 504
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews(I)V

    goto/16 :goto_0

    .line 506
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

    .line 508
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateConnectivity(Landroid/content/Intent;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    goto/16 :goto_0

    .line 510
    :cond_6
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshLocale()V

    .line 512
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    goto/16 :goto_0

    .line 513
    :cond_7
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshLocale()V

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateAirplaneMode()V

    .line 516
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    if-eqz v0, :cond_8

    .line 518
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v7, v0, :cond_9

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0xa0a0139

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 518
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 525
    .end local v7    # "i":I
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v7, v0, :cond_9

    .line 526
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateCarrierText(I)V

    .line 527
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateServiceState(I)V

    .line 528
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength(I)V

    .line 525
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 531
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    goto/16 :goto_0

    .line 532
    .end local v7    # "i":I
    :cond_a
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 533
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v7, v0, :cond_b

    .line 534
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateServiceState(I)V

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStateExtra:[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLockedReason:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-direct {p0, v7, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateSimState(ILjava/lang/String;Ljava/lang/String;)V

    .line 533
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 537
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    goto/16 :goto_0

    .line 538
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

    .line 541
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateWimaxState(Landroid/content/Intent;)V

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    goto/16 :goto_0

    .line 543
    :cond_e
    const-string v0, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 544
    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->updateSIMInfos(Landroid/content/Context;)V

    .line 545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataNetType()V

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength()V

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    goto/16 :goto_0

    .line 548
    :cond_f
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 549
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->unregisterPhoneStateListener()V

    .line 550
    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->updateSIMInfos(Landroid/content/Context;)V

    .line 552
    invoke-static {p1}, Lcom/android/systemui/statusbar/SIMHelper;->getSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 553
    .local v10, "mSimInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v10, :cond_10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 555
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v7, v0, :cond_15

    .line 556
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->resetPhoneState(I)V

    .line 555
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 558
    .end local v7    # "i":I
    :cond_11
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v0, v2, :cond_15

    .line 559
    const-string v0, "StatusBar.NetworkControllerTelecom"

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

    .line 560
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v7, v0, :cond_15

    .line 561
    const/4 v12, 0x1

    .line 562
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

    .line 563
    .local v9, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-ne v0, v7, :cond_12

    .line 564
    const/4 v12, 0x0

    .line 568
    .end local v9    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_13
    if-eqz v12, :cond_14

    .line 569
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->resetPhoneState(I)V

    .line 560
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 574
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "subNull":Z
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->registerPhoneStateListener()V

    .line 575
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateDataNetType()V

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateTelephonySignalStrength()V

    .line 577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    goto/16 :goto_0

    .line 583
    .end local v10    # "mSimInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_16
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 584
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    goto/16 :goto_0

    .line 585
    :cond_17
    const-string v0, "mz.action.demo.keyguard.lock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 10
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnecting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    if-nez v0, :cond_3

    :cond_1
    move v1, v8

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnecting:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivityIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWifi:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZZIILjava/lang/String;)V

    .line 399
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 401
    const-string v0, "StatusBar.NetworkControllerTelecom"

    const-string v2, "wimax is special, setMobileDataIndicators(SLOT_ID_1)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    aget v3, v0, v9

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileActivityIconId:[I

    aget v4, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    aget v5, v0, v9

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v0, v9

    move-object v0, p1

    move v1, v9

    move v2, v8

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneIconId:I

    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_0

    :cond_3
    move v1, v9

    .line 391
    goto :goto_1

    .line 402
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    goto :goto_2

    .line 412
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v1, v0, :cond_2

    .line 413
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    aget v3, v0, v1

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileActivityIconId:[I

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    aget v5, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v6, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v0, v1

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 413
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataSignalIconId:[I

    aget v3, v0, v1

    goto :goto_4
.end method

.method refreshViews()V
    .locals 2

    .prologue
    .line 2168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 2169
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->refreshViews(I)V

    .line 2168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2171
    :cond_0
    return-void
.end method

.method refreshViews(I)V
    .locals 41
    .param p1, "slotId"    # I

    .prologue
    .line 2174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 2176
    .local v16, "context":Landroid/content/Context;
    const/4 v15, 0x0

    .line 2177
    .local v15, "combinedSignalIconId":I
    const/4 v13, 0x0

    .line 2178
    .local v13, "combinedActivityIconId":I
    const-string v14, ""

    .line 2179
    .local v14, "combinedLabel":Ljava/lang/String;
    const-string v40, ""

    .line 2180
    .local v40, "wifiLabel":Ljava/lang/String;
    const-string v23, ""

    .line 2182
    .local v23, "mobileLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isEmergencyOnly()Z

    move-result v18

    .line 2185
    .local v18, "emergencyOnly":Z
    const-string v35, ""

    .line 2188
    .local v35, "tempNetworkName":Ljava/lang/String;
    const/16 v29, 0x0

    .line 2189
    .local v29, "tempDataSignalIconId":I
    const/16 v36, 0x0

    .line 2191
    .local v36, "tempPhoneSignalIconId":I
    const-string v8, ""

    .line 2192
    .local v8, "tempContentDescriptionPhoneSignal":Ljava/lang/String;
    const-string v9, ""

    .line 2193
    .local v9, "tempContentDescriptionDataType":Ljava/lang/String;
    const-string v25, ""

    .line 2195
    .local v25, "tempContentDescriptionCombinedSignal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v38, v3, p1

    .line 2196
    .local v38, "tempSignalStrength":Landroid/telephony/SignalStrength;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v37, v3, p1

    .line 2197
    .local v37, "tempServiceState":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataConnected:[Z

    aget-boolean v27, v3, p1

    .line 2198
    .local v27, "tempDataConnected":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataActivity:[I

    aget v26, v3, p1

    .line 2199
    .local v26, "tempDataActivity":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataSignalIconId:[I

    aget v29, v3, p1

    .line 2200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v8, v3, p1

    .line 2201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v9, v3, p1

    .line 2202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    aget v36, v3, p1

    .line 2203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v35, v3, p1

    .line 2205
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    if-nez v3, :cond_5

    .line 2206
    const/16 v36, 0x0

    move/from16 v29, v36

    .line 2207
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSPhoneSignalIconId:I

    .line 2208
    const-string v23, ""

    .line 2292
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-eqz v3, :cond_11

    .line 2293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiSsid:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 2294
    const v3, 0x7f0b00b5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 2295
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivityIconId:I

    .line 2320
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivityIconId:I

    .line 2321
    move-object/from16 v14, v40

    .line 2322
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 2332
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mBluetoothTethered:Z

    if-eqz v3, :cond_1

    .line 2333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v4, 0x7f0b003e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2334
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mBluetoothTetherIconId:I

    .line 2335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0096

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2339
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnectedNetworkType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_13

    const/16 v19, 0x1

    .line 2340
    .local v19, "ethernetConnected":Z
    :goto_3
    if-eqz v19, :cond_2

    .line 2341
    const v3, 0x7f0b00c0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2344
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    if-eqz v3, :cond_16

    if-eqz v37, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_16

    .line 2349
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0097

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2351
    const v3, 0x7f0203f2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneIconId:I

    .line 2352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    aput v6, v5, p1

    aput v6, v4, p1

    aput v6, v3, p1

    .line 2353
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSPhoneSignalIconId:I

    .line 2354
    const-string v3, "StatusBar.NetworkControllerTelecom"

    const-string v4, "airplane mode: reset signal icons and set airplane mode icon."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-eqz v3, :cond_14

    .line 2359
    const-string v23, ""

    .line 2411
    :cond_4
    :goto_4
    sparse-switch v29, :sswitch_data_0

    .line 2423
    :goto_5
    const/16 v30, 0x0

    .line 2424
    .local v30, "tempDataTypeIconId":I
    const/16 v34, 0x0

    .line 2425
    .local v34, "tempMobileActivityIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataDirectionIconId:[I

    aget v28, v3, p1

    .line 2426
    .local v28, "tempDataDirectionIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mPhoneSignalIconId:[I

    aget v36, v3, p1

    .line 2427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    aget v30, v3, p1

    .line 2428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileActivityIconId:[I

    aget v34, v3, p1

    .line 2431
    const-string v4, "StatusBar.NetworkControllerTelecom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews connected={"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-eqz v3, :cond_19

    const-string v3, " wifi"

    :goto_6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v27, :cond_1a

    const-string v3, " data"

    :goto_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " } level="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v38, :cond_1b

    const-string v3, "??"

    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " combinedSignalIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mobileLabel="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " wifiLabel="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " emergencyOnly="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " combinedLabel="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mAirplaneMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mDataActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mPhoneSignalIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mQSPhoneSignalIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mDataDirectionIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mDataSignalIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mDataTypeIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mQSDataTypeIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mWifiIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mQSWifiIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSWifiIconId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mBluetoothTetherIconId=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mBluetoothTetherIconId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastPhoneSignalIconId:[I

    aget v33, v3, p1

    .line 2461
    .local v33, "tempLastPhoneSignalIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataTypeIconId:[I

    aget v32, v3, p1

    .line 2462
    .local v32, "tempLastDataTypeIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataConnected:[Z

    aget-boolean v31, v3, p1

    .line 2465
    .local v31, "tempLastDataConnected":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 2466
    .local v12, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_9

    .line 2218
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

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataConnected:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_6

    .line 2219
    move-object/from16 v23, v35

    .line 2240
    :goto_a
    if-eqz v27, :cond_0

    .line 2241
    move/from16 v15, v29

    .line 2242
    const/16 v34, 0x0

    .line 2248
    .restart local v34    # "tempMobileActivityIconId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    aget v3, v3, p1

    if-nez v3, :cond_b

    .line 2249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileActivityIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 2283
    :goto_b
    move/from16 v13, v34

    .line 2285
    move-object/from16 v14, v23

    .line 2286
    move/from16 v15, v29

    .line 2287
    move-object/from16 v25, v9

    .line 2288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileActivityIconId:[I

    aput v34, v3, p1

    goto/16 :goto_0

    .line 2220
    .end local v34    # "tempMobileActivityIconId":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mConnected:Z

    if-nez v3, :cond_7

    if-eqz v18, :cond_a

    .line 2222
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileActivityIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 2224
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v18, :cond_9

    .line 2226
    :cond_8
    move-object/from16 v23, v35

    goto :goto_a

    .line 2229
    :cond_9
    const-string v23, ""

    goto :goto_a

    .line 2233
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileActivityIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 2235
    const v3, 0x7f0b00b4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_a

    .line 2251
    .restart local v34    # "tempMobileActivityIconId":I
    :cond_b
    packed-switch v26, :pswitch_data_0

    .line 2274
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2275
    const v34, 0x7f02039b

    goto :goto_b

    .line 2253
    :pswitch_0
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2254
    const v34, 0x7f0203b1

    goto :goto_b

    .line 2256
    :cond_c
    const v34, 0x7f0203b0

    .line 2258
    goto :goto_b

    .line 2260
    :pswitch_1
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2261
    const v34, 0x7f0203b5

    goto :goto_b

    .line 2263
    :cond_d
    const v34, 0x7f0203b4

    .line 2265
    goto :goto_b

    .line 2267
    :pswitch_2
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2268
    const v34, 0x7f0203b3

    goto :goto_b

    .line 2270
    :cond_e
    const v34, 0x7f0203b2

    .line 2272
    goto :goto_b

    .line 2277
    :cond_f
    const/16 v34, 0x0

    goto :goto_b

    .line 2297
    .end local v34    # "tempMobileActivityIconId":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 2299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "xxxxXXXXxxxxXXXX"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 2304
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivity:I

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 2315
    :pswitch_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2306
    :pswitch_4
    const v3, 0x7f0203b0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2309
    :pswitch_5
    const v3, 0x7f0203b4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2312
    :pswitch_6
    const v3, 0x7f0203b2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2325
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_12

    .line 2326
    const-string v40, ""

    goto/16 :goto_2

    .line 2328
    :cond_12
    const v3, 0x7f0b00b4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_2

    .line 2339
    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 2361
    .restart local v19    # "ethernetConnected":Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_15

    .line 2363
    const-string v40, ""

    .line 2368
    :goto_c
    move-object/from16 v25, v8

    .line 2369
    move/from16 v15, v29

    goto/16 :goto_4

    .line 2365
    :cond_15
    const v3, 0x7f0b00b4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 2366
    move-object/from16 v14, v40

    goto :goto_c

    .line 2372
    :cond_16
    if-nez v27, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mBluetoothTethered:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxConnected:Z

    if-nez v3, :cond_4

    if-nez v19, :cond_4

    .line 2375
    const v3, 0x7f0b00b4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2377
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_17

    move/from16 v15, v29

    .line 2379
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_18

    move-object/from16 v25, v9

    :goto_e
    goto/16 :goto_4

    .line 2377
    :cond_17
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    goto :goto_d

    .line 2379
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v25, v0

    goto :goto_e

    .line 2418
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDataTypeIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 2419
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mQSDataTypeIconId:I

    goto/16 :goto_5

    .line 2431
    .restart local v28    # "tempDataDirectionIconId":I
    .restart local v30    # "tempDataTypeIconId":I
    .restart local v34    # "tempMobileActivityIconId":I
    :cond_19
    const-string v3, ""

    goto/16 :goto_6

    :cond_1a
    const-string v3, ""

    goto/16 :goto_7

    :cond_1b
    invoke-virtual/range {v38 .. v38}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 2469
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v31    # "tempLastDataConnected":Z
    .restart local v32    # "tempLastDataTypeIconId":I
    .restart local v33    # "tempLastPhoneSignalIconId":I
    :cond_1c
    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionOverlayIconId:I

    if-ne v3, v13, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    if-ne v3, v4, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    if-ne v3, v4, :cond_1d

    move/from16 v0, v32

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    if-ne v3, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLocale:Ljava/util/Locale;

    if-ne v3, v4, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionIconId:I

    move/from16 v0, v28

    if-ne v3, v0, :cond_1d

    move/from16 v0, v31

    move/from16 v1, v27

    if-eq v0, v1, :cond_21

    .line 2479
    :cond_1d
    const-string v3, "StatusBar.NetworkControllerTelecom"

    const-string v4, "refreshing SignalClusterView."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2482
    .local v2, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiEnabled:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnected:Z

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnecting:Z

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    if-nez v3, :cond_1f

    :cond_1e
    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiConnecting:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiActivityIconId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZZIILjava/lang/String;)V

    .line 2490
    const-string v3, "StatusBar.NetworkControllerTelecom"

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

    .line 2494
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mShowPhoneRSSIForData:Z

    if-eqz v3, :cond_20

    move/from16 v5, v36

    :goto_11
    move/from16 v3, p1

    move/from16 v6, v34

    move/from16 v7, v30

    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    .line 2502
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneIconId:I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto/16 :goto_f

    .line 2482
    :cond_1f
    const/4 v3, 0x0

    goto :goto_10

    :cond_20
    move/from16 v5, v29

    .line 2494
    goto :goto_11

    .line 2506
    .end local v2    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    if-eq v3, v4, :cond_22

    .line 2507
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastAirplaneMode:Z

    .line 2510
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLocale:Ljava/util/Locale;

    if-eq v3, v4, :cond_23

    .line 2511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastLocale:Ljava/util/Locale;

    .line 2515
    :cond_23
    move/from16 v0, v33

    move/from16 v1, v36

    if-eq v0, v1, :cond_24

    .line 2516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastPhoneSignalIconId:[I

    aput v36, v3, p1

    .line 2520
    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionIconId:I

    move/from16 v0, v28

    if-eq v3, v0, :cond_25

    .line 2521
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionIconId:I

    .line 2525
    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    if-eq v3, v4, :cond_26

    .line 2526
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiIconId:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWifiIconId:I

    .line 2530
    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    if-eq v3, v4, :cond_27

    .line 2531
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWimaxIconId:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastWimaxIconId:I

    .line 2534
    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastCombinedSignalIconId:I

    if-eq v3, v15, :cond_28

    .line 2535
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastCombinedSignalIconId:I

    .line 2539
    :cond_28
    move/from16 v0, v32

    move/from16 v1, v30

    if-eq v0, v1, :cond_29

    .line 2540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataTypeIconId:[I

    aput v30, v3, p1

    .line 2544
    :cond_29
    move/from16 v0, v31

    move/from16 v1, v27

    if-eq v0, v1, :cond_2a

    .line 2545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataConnected:[Z

    aput-boolean v27, v3, p1

    .line 2549
    :cond_2a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionOverlayIconId:I

    if-eq v3, v13, :cond_2b

    .line 2550
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastDataDirectionOverlayIconId:I

    .line 2554
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 2555
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mLastCombinedLabel:Ljava/lang/String;

    .line 2556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2557
    .local v10, "N":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_12
    move/from16 v0, v21

    if-ge v0, v10, :cond_2c

    .line 2558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCombinedLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 2559
    .local v39, "v":Landroid/widget/TextView;
    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2557
    add-int/lit8 v21, v21, 0x1

    goto :goto_12

    .line 2564
    .end local v10    # "N":I
    .end local v21    # "i":I
    .end local v39    # "v":Landroid/widget/TextView;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2565
    .restart local v10    # "N":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_13
    move/from16 v0, v21

    if-ge v0, v10, :cond_2e

    .line 2566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mWifiLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 2567
    .restart local v39    # "v":Landroid/widget/TextView;
    invoke-virtual/range {v39 .. v40}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2568
    const-string v3, ""

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2569
    const/16 v3, 0x8

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2565
    :goto_14
    add-int/lit8 v21, v21, 0x1

    goto :goto_13

    .line 2571
    :cond_2d
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14

    .line 2576
    .end local v39    # "v":Landroid/widget/TextView;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2578
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 2579
    .local v24, "statusLabel":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2580
    .local v11, "carrierLabel":Landroid/widget/TextView;
    const-string v3, "StatusBar.NetworkControllerTelecom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshing carrier name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    sget-object v3, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2583
    const/16 v20, 0x0

    .line 2587
    .local v20, "hasChanged":Z
    if-eqz v24, :cond_2f

    .line 2588
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0b0109

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 2589
    const v3, 0x7f0b0109

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2590
    const/16 v20, 0x1

    .line 2593
    :cond_2f
    if-eqz v11, :cond_30

    .line 2594
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 2595
    const v3, 0x7f0b0109

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2596
    const/16 v20, 0x1

    .line 2600
    :cond_30
    if-eqz v20, :cond_31

    .line 2601
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateOperatorInfo()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    .end local v11    # "carrierLabel":Landroid/widget/TextView;
    .end local v20    # "hasChanged":Z
    .end local v24    # "statusLabel":Landroid/widget/TextView;
    :cond_31
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2654
    const/16 v21, 0x0

    :goto_16
    move/from16 v0, v21

    if-ge v0, v10, :cond_38

    .line 2655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mEmergencyLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 2656
    .restart local v39    # "v":Landroid/widget/TextView;
    if-nez v18, :cond_37

    .line 2657
    const/16 v3, 0x8

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2654
    :goto_17
    add-int/lit8 v21, v21, 0x1

    goto :goto_16

    .line 2604
    .end local v39    # "v":Landroid/widget/TextView;
    .restart local v11    # "carrierLabel":Landroid/widget/TextView;
    .restart local v24    # "statusLabel":Landroid/widget/TextView;
    :cond_32
    const/16 v20, 0x0

    .line 2605
    .restart local v20    # "hasChanged":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_31

    .line 2606
    if-eqz v24, :cond_33

    .line 2607
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 2608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2609
    const/16 v20, 0x1

    .line 2612
    :cond_33
    if-eqz v11, :cond_34

    .line 2613
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 2614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2615
    const/16 v20, 0x1

    .line 2619
    :cond_34
    if-eqz v20, :cond_31

    .line 2620
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateOperatorInfo()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_15

    .line 2624
    .end local v11    # "carrierLabel":Landroid/widget/TextView;
    .end local v20    # "hasChanged":Z
    .end local v24    # "statusLabel":Landroid/widget/TextView;
    :catch_0
    move-exception v17

    .line 2625
    .local v17, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "StatusBar.NetworkControllerTelecom"

    const-string v4, "refreshView: carrier labels and status labels are not added yet."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 2628
    .end local v17    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2629
    const/16 v21, 0x0

    :goto_18
    move/from16 v0, v21

    if-ge v0, v10, :cond_31

    .line 2630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mMobileLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 2631
    .restart local v39    # "v":Landroid/widget/TextView;
    sget-object v3, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2635
    const v3, 0x7f0b0109

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2629
    :goto_19
    add-int/lit8 v21, v21, 0x1

    goto :goto_18

    .line 2640
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2641
    const-string v3, "StatusBar.NetworkControllerTelecom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshing carrier name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2659
    :cond_37
    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2660
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17

    .line 2663
    .end local v39    # "v":Landroid/widget/TextView;
    :cond_38
    return-void

    .line 2411
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0203ba -> :sswitch_0
        0x7f0203bd -> :sswitch_0
        0x7f0203f8 -> :sswitch_0
        0x7f0203f9 -> :sswitch_0
        0x7f0203fa -> :sswitch_0
        0x7f0203fb -> :sswitch_0
    .end sparse-switch

    .line 2251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2304
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
    .line 2904
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2905
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2906
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2907
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2908
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2909
    return-void
.end method

.method public setStatusViewGemini(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CarrierLabel;Lcom/android/systemui/statusbar/CarrierLabel;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "carrier1"    # Lcom/android/systemui/statusbar/CarrierLabel;
    .param p3, "carrier2"    # Lcom/android/systemui/statusbar/CarrierLabel;
    .param p4, "carrierDivider"    # Landroid/view/View;

    .prologue
    .line 2937
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewGemini:Landroid/view/ViewGroup;

    .line 2938
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2939
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2940
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2941
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusLabelDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2942
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusLabelDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2943
    return-void
.end method

.method public updateKeyguardStatusBarView(Z)V
    .locals 4
    .param p1, "isKeyguardShow"    # Z

    .prologue
    .line 3180
    const-string v1, "StatusBar.NetworkControllerTelecom"

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

    .line 3185
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsLidClosed:Z

    if-nez v1, :cond_0

    .line 3187
    sget-object v1, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3193
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3197
    .local v0, "maxWidth":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->adjustOperatorWidth(I)V

    .line 3199
    .end local v0    # "maxWidth":I
    :cond_0
    return-void

    .line 3195
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

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

    .line 1911
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

    .line 1914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1915
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1919
    .local v0, "something":Z
    if-eqz p4, :cond_0

    .line 1920
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    const/4 v0, 0x1

    .line 1922
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkName:[Ljava/lang/String;

    aput-object v5, v2, p1

    .line 1940
    :goto_0
    return-void

    .line 1925
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1930
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    const/4 v0, 0x1

    .line 1933
    :cond_1
    if-eqz v0, :cond_2

    .line 1934
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1935
    const-string v2, "StatusBar.NetworkControllerTelecom"

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

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1937
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkName:[Ljava/lang/String;

    aput-object v5, v2, p1

    .line 1938
    const-string v2, "StatusBar.NetworkControllerTelecom"

    const-string v3, "setting networkName null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNetworkNameEx(ILjava/lang/String;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "numberic"    # Ljava/lang/String;

    .prologue
    .line 984
    if-eqz p2, :cond_1

    .line 986
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, "locCountry":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 990
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

    .line 998
    .local v0, "locAlphaLong":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 999
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

    .line 1001
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aput-object v0, v4, p1

    .line 1002
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

    .line 1003
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperatorAlphaLong = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    .end local v0    # "locAlphaLong":Ljava/lang/String;
    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1005
    .restart local v0    # "locAlphaLong":Ljava/lang/String;
    .restart local v1    # "locCountry":Ljava/lang/String;
    .restart local v2    # "locLanguage":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->appendSurfix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    goto :goto_0

    .line 1026
    .end local v0    # "locAlphaLong":Ljava/lang/String;
    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1008
    .restart local v0    # "locAlphaLong":Ljava/lang/String;
    .restart local v1    # "locCountry":Ljava/lang/String;
    .restart local v2    # "locLanguage":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 1009
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

    .line 1011
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aput-object v3, v4, p1

    .line 1012
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

    .line 1013
    const-string v4, "PhoneStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperatorAlphaLong = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->appendSurfix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public updateOperatorInfo()V
    .locals 3

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mDividerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateOperatorInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 2990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mStatusLabelDividerList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateOperatorInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 2991
    return-void
.end method

.method public updateOperatorInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 15
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
    .line 3000
    .local p1, "carrierList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/CarrierLabel;>;"
    .local p2, "dividerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 3157
    :cond_0
    :goto_0
    return-void

    .line 3004
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 3005
    .local v6, "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-nez v6, :cond_2

    goto :goto_0

    .line 3010
    .end local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 3011
    .restart local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-eqz v6, :cond_4

    .line 3012
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    goto :goto_1

    .line 3016
    .end local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 3017
    .local v8, "mDividerMemeber":Landroid/view/View;
    if-eqz v8, :cond_6

    .line 3018
    const/16 v12, 0x8

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 3022
    .end local v8    # "mDividerMemeber":Landroid/view/View;
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isWifiOnlyDevice()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3024
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 3025
    .restart local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-eqz v6, :cond_8

    .line 3026
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    goto :goto_3

    .line 3035
    .end local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_9
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    if-nez v12, :cond_a

    sget-object v12, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 3036
    :cond_a
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 3037
    .local v1, "defaultCarrierLabel":Lcom/android/systemui/statusbar/CarrierLabel;
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 3038
    const/16 v12, 0x11

    invoke-virtual {v1, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    goto :goto_0

    .line 3046
    .end local v1    # "defaultCarrierLabel":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_b
    sget-object v12, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 3047
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_17

    .line 3048
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 3049
    .restart local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-eqz v6, :cond_e

    .line 3050
    if-nez v2, :cond_f

    .line 3051
    const v12, 0x800005

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    .line 3055
    :cond_c
    :goto_5
    add-int/lit8 v12, v2, -0x1

    if-ltz v12, :cond_d

    .line 3056
    add-int/lit8 v12, v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 3058
    :cond_d
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 3047
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3052
    :cond_f
    const/4 v12, 0x1

    if-ne v2, v12, :cond_c

    .line 3053
    const v12, 0x800003

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    goto :goto_5

    .line 3062
    .end local v2    # "i":I
    .end local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    :cond_10
    const/4 v9, 0x0

    .line 3064
    .local v9, "mNumOfSIM":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v4, v12, [I

    .line 3065
    .local v4, "insertedSim":[I
    const/4 v5, 0x0

    .line 3066
    .local v5, "mCarrierLeft":Lcom/android/systemui/statusbar/CarrierLabel;
    const/4 v7, 0x0

    .line 3067
    .local v7, "mCarrierRight":Lcom/android/systemui/statusbar/CarrierLabel;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_16

    .line 3068
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 3069
    .restart local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-eqz v6, :cond_13

    .line 3070
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/CarrierLabel;->getSlotId()I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/SIMHelper;->isSimInserted(Landroid/content/Context;I)Z

    move-result v11

    .line 3074
    .local v11, "simInserted":Z
    const-string v12, "StatusBar.NetworkControllerTelecom"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateOperatorInfo, simInserted is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", SIM slod id is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/CarrierLabel;->getSlotId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    if-eqz v11, :cond_15

    .line 3082
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 3083
    const/4 v12, 0x1

    aput v12, v4, v2

    .line 3084
    add-int/lit8 v9, v9, 0x1

    .line 3085
    const/4 v12, 0x1

    if-ne v9, v12, :cond_14

    .line 3086
    move-object v5, v6

    .line 3090
    :cond_11
    :goto_7
    const/4 v12, 0x2

    if-lt v9, v12, :cond_12

    add-int/lit8 v12, v2, -0x1

    if-ltz v12, :cond_12

    .line 3091
    add-int/lit8 v12, v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 3096
    :cond_12
    :goto_8
    const/16 v12, 0x11

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    .line 3067
    .end local v11    # "simInserted":Z
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3087
    .restart local v11    # "simInserted":Z
    :cond_14
    const/4 v12, 0x2

    if-ne v9, v12, :cond_11

    .line 3088
    move-object v7, v6

    goto :goto_7

    .line 3094
    :cond_15
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    goto :goto_8

    .line 3100
    .end local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    .end local v11    # "simInserted":Z
    :cond_16
    const/4 v12, 0x2

    if-ne v9, v12, :cond_18

    .line 3101
    const v12, 0x800005

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    .line 3102
    const v12, 0x800003

    invoke-virtual {v7, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    .line 3135
    .end local v4    # "insertedSim":[I
    .end local v5    # "mCarrierLeft":Lcom/android/systemui/statusbar/CarrierLabel;
    .end local v7    # "mCarrierRight":Lcom/android/systemui/statusbar/CarrierLabel;
    .end local v9    # "mNumOfSIM":I
    :cond_17
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_0

    .line 3137
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mIsLidClosed:Z

    if-eqz v12, :cond_1d

    .line 3142
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0007

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 3155
    .local v10, "maxWidth":I
    :goto_9
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->adjustOperatorWidth(I)V

    goto/16 :goto_0

    .line 3103
    .end local v10    # "maxWidth":I
    .restart local v4    # "insertedSim":[I
    .restart local v5    # "mCarrierLeft":Lcom/android/systemui/statusbar/CarrierLabel;
    .restart local v7    # "mCarrierRight":Lcom/android/systemui/statusbar/CarrierLabel;
    .restart local v9    # "mNumOfSIM":I
    :cond_18
    if-nez v9, :cond_17

    .line 3105
    const/4 v2, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_17

    .line 3106
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/CarrierLabel;

    .line 3107
    .restart local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    if-eqz v6, :cond_1b

    .line 3108
    if-nez v2, :cond_1c

    .line 3109
    const v12, 0x800005

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    .line 3113
    :cond_19
    :goto_b
    add-int/lit8 v12, v2, -0x1

    if-ltz v12, :cond_1a

    .line 3114
    add-int/lit8 v12, v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 3116
    :cond_1a
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 3105
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3110
    :cond_1c
    const/4 v12, 0x1

    if-ne v2, v12, :cond_19

    .line 3111
    const v12, 0x800003

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/CarrierLabel;->setGravity(I)V

    goto :goto_b

    .line 3144
    .end local v4    # "insertedSim":[I
    .end local v5    # "mCarrierLeft":Lcom/android/systemui/statusbar/CarrierLabel;
    .end local v6    # "mCarrierMember":Lcom/android/systemui/statusbar/CarrierLabel;
    .end local v7    # "mCarrierRight":Lcom/android/systemui/statusbar/CarrierLabel;
    .end local v9    # "mNumOfSIM":I
    :cond_1d
    sget-object v12, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 3150
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0006

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_9

    .line 3152
    .end local v10    # "maxWidth":I
    :cond_1e
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0001

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_9
.end method

.method updateServiceState(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 810
    const-string v1, "StatusBar.NetworkControllerTelecom"

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

    .line 811
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 908
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0xa0a0139

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto :goto_0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_2

    .line 829
    const-string v1, "StatusBar.NetworkControllerTelecom"

    const-string v2, "sim card is not unknown or not ready, does nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 857
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->hasService(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 858
    const-string v1, "StatusBar.NetworkControllerTelecom"

    const-string v2, "updateServiceState: !hasService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    const v3, 0xa0a00c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 861
    const-string v1, "StatusBar.NetworkControllerTelecom"

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

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkName:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkName:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 895
    :cond_4
    const-string v1, "StatusBar.NetworkControllerTelecom"

    const-string v2, "network name is null, find operator name in our own xml."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "num":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 898
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateNetworkNameGeminiEx(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 900
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->updateNetworkNameEx(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 904
    .end local v0    # "num":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    .line 905
    const-string v1, "StatusBar.NetworkControllerTelecom"

    const-string v2, "use network name from framework directly."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v1, "StatusBar.NetworkControllerTelecom"

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

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->mCarrierName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
