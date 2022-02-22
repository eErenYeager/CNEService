.class public final Lcom/quicinc/cne/CNE;
.super Lcom/quicinc/cne/ICNEManager$Stub;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/CNE$CNEReceiver;,
        Lcom/quicinc/cne/CNE$CNESender;,
        Lcom/quicinc/cne/CNE$IdGenerator;,
        Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;,
        Lcom/quicinc/cne/CNE$CMProfile;,
        Lcom/quicinc/cne/CNE$CneWwanInfo;,
        Lcom/quicinc/cne/CNE$CneWifiInfo;,
        Lcom/quicinc/cne/CNE$FreqBand;,
        Lcom/quicinc/cne/CNE$CneRatInfo;,
        Lcom/quicinc/cne/CNE$CnePhoneStateListener;,
        Lcom/quicinc/cne/CNE$FeatureType;
    }
.end annotation


# static fields
.field private static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field public static final CND_RET_CODE_INVALID_DATA:I = -0x2

.field public static final CND_RET_CODE_OK:I = 0x0

.field public static final CND_RET_CODE_UNKNOWN_ERROR:I = -0x1

.field static final CNE_MAX_COMMAND_BYTES:I = 0x2000

.field public static final CNE_PREFERENCE_CHANGED_ACTION:Ljava/lang/String; = "com.quicinc.cne.CNE_PREFERENCE_CHANGED"

.field public static final CNE_RET_BUSY:I = -0x2

.field public static final CNE_RET_ERROR:I = -0x1

.field public static final CNE_RET_FEATURE_UNSUPPORTED:I = -0x4

.field public static final CNE_RET_FILE_SIZE_TOO_LARGE:I = -0x5

.field public static final CNE_RET_INVALID_ARGS:I = -0x3

.field public static final CNE_RET_INVALID_VERSION:I = -0x8

.field public static final CNE_RET_PATH_ACCESS_DENIED:I = -0x6

.field public static final CNE_RET_PATH_NAME_TOO_LONG:I = -0x7

.field public static final CNE_RET_SUCCESS:I = 0x3e8

.field static final CNE_SWIM_RSSI_POLL_PERIOD:I = 0x1388

.field public static final CNE_UPSTREAM_IFACE_CHANGED_ACTION:Ljava/lang/String; = "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

.field private static final DBG:Z = true

.field private static final EVENT_DEFAULT_NETWORK_SWITCH:I = 0x83ffe

.field public static final EVENT_POSTCNDINIT:I = 0x3

.field public static final EVENT_SEND:I = 0x1

.field public static final EVENT_TOGGLE_WIFI:I = 0x2

.field public static final EXTRA_FEATURE_ID:Ljava/lang/String; = "cneFeatureId"

.field public static final EXTRA_FEATURE_PARAMETER:Ljava/lang/String; = "cneFeatureParameter"

.field private static final EXTRA_IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field private static final EXTRA_NETID:Ljava/lang/String; = "netID"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "netType"

.field public static final EXTRA_PARAMETER_VALUE:Ljava/lang/String; = "cneParameterValue"

.field public static final IWLAN_FEATURE_ENABLED:I = 0x1

.field public static final IWLAN_FEATURE_OFF:I = 0x1

.field public static final IWLAN_FEATURE_ON:I = 0x2

.field private static final MAX_ANDSF_FILE_SIZE:J = 0x19000L

.field protected static final MAX_DNS_ADDRS:I = 0x4

.field private static final MAX_FILE_PATH_LENGTH:I = 0x400

.field protected static final MAX_NETWORK_CALLBACKS:I = 0xf

.field private static final NETWORK_STATE_CONNECTED:Ljava/lang/String; = "CONNECTED"

.field private static final NETWORK_STATE_CONNECTING:Ljava/lang/String; = "CONNECTING"

.field private static final NETWORK_STATE_DISCONNECTED:Ljava/lang/String; = "DISCONNECTED"

.field private static final NETWORK_STATE_DISCONNECTING:Ljava/lang/String; = "DISCONNECTING"

.field private static final NETWORK_STATE_SUSPENDED:Ljava/lang/String; = "SUSPENDED"

.field private static final NETWORK_STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final POLICY_TYPE_ANDSF:I = 0x1

.field private static final QXDM_LOGGING:I = 0xf86

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field public static final RSSIProfilesPath:Ljava/lang/String; = "/system/etc/cne/Nexus/"

.field private static final RSSI_PROFILE_OVERRIDE_KEY:Ljava/lang/String; = "ims_profile_override"

.field private static final RSSI_PROFILE_OVERRIDE_PATH:Ljava/lang/String; = "/data/connectivity/profiles_override/profiles.xml"

.field public static final SCREEN_STATE_OFF:Z = false

.field public static final SCREEN_STATE_ON:Z = true

.field static final SOCKET_NAME_CNE:Ljava/lang/String; = "cnd"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final SUB_TYPE:Ljava/lang/String; = "CORE"

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final TEST_PROT_BUFF:Ljava/lang/String; = "com.quicinc.cne.TEST_PROT_BUFF"

.field public static final TEST_SEND_RAT_INFO:Ljava/lang/String; = "com.quicinc.cne.TEST_SEND_RAT_INFO"

.field private static final TEST_TAG:Ljava/lang/String; = "TEST"

.field public static final TEST_WIFI_BAND_2GHz:Ljava/lang/String; = "com.quicinc.cne.SET_WIFI_BAND_2GHz"

.field public static final TEST_WIFI_BAND_5GHz:Ljava/lang/String; = "com.quicinc.cne.SET_WIFI_BAND_5GHz"

.field static final WAKELOCK_TIMER:I = 0x3e8

.field private static final WIFI_NO_FAM_CONNECTED:I = 0x0

.field private static final WIFI_V4_CONNECTED:I = 0x1

.field private static final WIFI_V4_V6_CONNECTED:I = 0x3

.field private static final WIFI_V6_CONNECTED:I = 0x2

.field public static final WQE_FEATURE_ENABLED:I = 0x1

.field public static final WQE_FEATURE_OFF:I = 0x1

.field public static final WQE_FEATURE_ON:I = 0x2

.field public static final andsfCneFbFileLoc:Ljava/lang/String; = "system/etc/cne/andsfCne.xml"

.field public static final andsfCneFileLoc:Ljava/lang/String; = "data/connectivity/profile-internet.xml"

.field public static final dataPath:Ljava/lang/String; = "/data/connectivity/"

.field private static isAndsfConfigUpdateBusy:Z = false

.field static isCndDisconnected:Z = false

.field static isCndUp:Z = false

.field static isDispatched:Z = false

.field private static final isNexusBuild:Z = true

.field private static mRemoveHostEntry:Z = false

.field private static mRequestHandlers:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static mRoleRegId:I = 0x0

.field private static mSocketId:I = 0x0

.field public static final systemPath:Ljava/lang/String; = "/system/etc/cne/"

.field private static updateOpPolicy:Ljava/lang/Object; = null

.field private static final wifiBadReason:Ljava/lang/String; = " Wifi quality is poor "

.field private static final wifiGoodReason:Ljava/lang/String; = " Wifi quality is better "


# instance fields
.field private final INVALID_MSG_ARG:I

.field private IPV4Available:Z

.field private IPV6Available:Z

.field private _cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

.field private _cneWwanInfo:Lcom/quicinc/cne/CNE$CneWwanInfo;

.field private activeWlanIfName:Ljava/lang/String;

.field private activeWwanV4IfName:Ljava/lang/String;

.field private activeWwanV6IfName:Ljava/lang/String;

.field private andsfHasBeenInit:Z

.field private andsfParser:Lcom/quicinc/cne/andsf/AndsfParser;

.field private cm:Landroid/net/ConnectivityManager;

.field private curLp:Landroid/net/LinkProperties;

.field private getRequestUrl:Ljava/lang/String;

.field private hostRoutingIpAddr:Ljava/lang/String;

.field private isWifiConnected:Z

.field isWlanConnected:Z

.field private lastFamilyType:I

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultNetwork:I

.field private mFactoryHandler:Landroid/os/Handler;

.field private mFactoryThread:Landroid/os/HandlerThread;

.field private mIPFamilyLock:Ljava/lang/Object;

.field private mIWLANFeatureEnabled:Z

.field private mIWLANFeatureRequestedState:Z

.field private mIdGen:Lcom/quicinc/cne/CNE$IdGenerator;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsQuotaReached:Z

.field private mLastWQEFeatureEnabled:Z

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/quicinc/cne/CNENetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileDataCO:Landroid/database/ContentObserver;

.field private mMobileNetwork:Landroid/net/Network;

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mMobileRequest:Landroid/net/NetworkRequest;

.field mNatKaWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

.field private mNetworkFactory:Landroid/net/NetworkFactory;

.field private mNetworkPreference:I

.field private mPacketKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPowerManager:Landroid/os/PowerManager;

.field private mProfileIDPrefix:Ljava/lang/String;

.field mReceiver:Lcom/quicinc/cne/CNE$CNEReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestMessagesPending:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/quicinc/cne/CNERequest;",
            ">;"
        }
    .end annotation
.end field

.field mRssiWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenOn:Z

.field mSender:Lcom/quicinc/cne/CNE$CNESender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field mSocket:Landroid/net/LocalSocket;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWFCEnabled:Z

.field private mWQEFeatureEnabled:Z

.field private mWQEFeatureRequestedState:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetwork:Landroid/net/Network;

.field private mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiRequest:Landroid/net/NetworkRequest;

.field private pkaCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field prevRSSI:I

.field private profileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/quicinc/cne/CNE$CMProfile;",
            ">;"
        }
    .end annotation
.end field

.field private profileTrackerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/quicinc/cne/CMProfileTracker;",
            ">;"
        }
    .end annotation
.end field

.field private sendDefaultRouteIntent:Z

.field private wqeConfigured:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/quicinc/cne/CNE;->updateOpPolicy:Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lcom/quicinc/cne/CNE;->isAndsfConfigUpdateBusy:Z

    .line 197
    sput v0, Lcom/quicinc/cne/CNE;->mSocketId:I

    .line 225
    sput-boolean v0, Lcom/quicinc/cne/CNE;->isCndUp:Z

    .line 228
    sput-boolean v0, Lcom/quicinc/cne/CNE;->isCndDisconnected:Z

    .line 231
    sput-boolean v0, Lcom/quicinc/cne/CNE;->isDispatched:Z

    .line 266
    sput v0, Lcom/quicinc/cne/CNE;->mRoleRegId:I

    .line 291
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/quicinc/cne/CNE;->mRequestHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 300
    sput-boolean v0, Lcom/quicinc/cne/CNE;->mRemoveHostEntry:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1532
    invoke-direct {p0}, Lcom/quicinc/cne/ICNEManager$Stub;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->IPV4Available:Z

    .line 159
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->IPV6Available:Z

    .line 160
    iput v0, p0, Lcom/quicinc/cne/CNE;->lastFamilyType:I

    .line 162
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/quicinc/cne/CNE;->mIPFamilyLock:Ljava/lang/Object;

    .line 164
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->isWifiConnected:Z

    .line 165
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->mLastWQEFeatureEnabled:Z

    .line 167
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    .line 168
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureEnabled:Z

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureRequestedState:Z

    .line 171
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureRequestedState:Z

    .line 172
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->sendDefaultRouteIntent:Z

    .line 191
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/quicinc/cne/CNE;->mCsHandler:Landroid/os/Handler;

    .line 198
    const/4 v3, -0x1

    iput v3, p0, Lcom/quicinc/cne/CNE;->INVALID_MSG_ARG:I

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    .line 211
    const-string v3, "profile"

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mProfileIDPrefix:Ljava/lang/String;

    .line 269
    new-instance v3, Lcom/quicinc/cne/CNE$CnePhoneStateListener;

    invoke-direct {v3, p0, v2}, Lcom/quicinc/cne/CNE$CnePhoneStateListener;-><init>(Lcom/quicinc/cne/CNE;Lcom/quicinc/cne/CNE$1;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 273
    const/16 v3, 0x11

    iput v3, p0, Lcom/quicinc/cne/CNE;->mDefaultNetwork:I

    .line 294
    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 296
    iput-object v2, p0, Lcom/quicinc/cne/CNE;->activeWlanIfName:Ljava/lang/String;

    .line 297
    iput-object v2, p0, Lcom/quicinc/cne/CNE;->activeWwanV4IfName:Ljava/lang/String;

    .line 298
    iput-object v2, p0, Lcom/quicinc/cne/CNE;->activeWwanV6IfName:Ljava/lang/String;

    .line 299
    iput-object v2, p0, Lcom/quicinc/cne/CNE;->hostRoutingIpAddr:Ljava/lang/String;

    .line 301
    iput-object v2, p0, Lcom/quicinc/cne/CNE;->getRequestUrl:Ljava/lang/String;

    .line 303
    iput-object v2, p0, Lcom/quicinc/cne/CNE;->andsfParser:Lcom/quicinc/cne/andsf/AndsfParser;

    .line 304
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->andsfHasBeenInit:Z

    .line 305
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->mWFCEnabled:Z

    .line 306
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->wqeConfigured:Z

    .line 314
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mMap:Ljava/util/HashMap;

    .line 320
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->mIsQuotaReached:Z

    .line 935
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->isWlanConnected:Z

    .line 936
    iput v0, p0, Lcom/quicinc/cne/CNE;->prevRSSI:I

    .line 938
    new-instance v3, Lcom/quicinc/cne/CNE$1;

    invoke-direct {v3, p0}, Lcom/quicinc/cne/CNE$1;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1669
    new-instance v3, Lcom/quicinc/cne/CNE$2;

    invoke-direct {v3, p0}, Lcom/quicinc/cne/CNE$2;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1765
    new-instance v3, Lcom/quicinc/cne/CNE$3;

    invoke-direct {v3, p0}, Lcom/quicinc/cne/CNE$3;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2428
    new-instance v3, Lcom/quicinc/cne/CNE$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/quicinc/cne/CNE$4;-><init>(Lcom/quicinc/cne/CNE;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mMobileDataCO:Landroid/database/ContentObserver;

    .line 2648
    new-instance v3, Lcom/quicinc/cne/CNE$5;

    invoke-direct {v3, p0}, Lcom/quicinc/cne/CNE$5;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->pkaCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 1534
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    .line 1535
    iput-object p2, p0, Lcom/quicinc/cne/CNE;->mCsHandler:Landroid/os/Handler;

    .line 1536
    iput v0, p0, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    .line 1537
    iput-object p1, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    .line 1538
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "CNESender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mSenderThread:Landroid/os/HandlerThread;

    .line 1539
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1542
    new-instance v3, Lcom/quicinc/cne/CNE$CneWifiInfo;

    invoke-direct {v3, p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    .line 1543
    new-instance v3, Lcom/quicinc/cne/CNE$CneWwanInfo;

    invoke-direct {v3, p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->_cneWwanInfo:Lcom/quicinc/cne/CNE$CneWwanInfo;

    .line 1544
    new-instance v3, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    invoke-direct {v3, p0}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v3, p0, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    .line 1546
    const-string v3, "persist.cne.logging.qxdm"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1547
    .local v3, "val":I
    const/16 v4, 0xf86

    if-ne v3, v4, :cond_0

    .line 1548
    sput-boolean v1, Lcom/quicinc/cne/CneMsg;->ADDTL_MSG:Z

    .line 1550
    :cond_0
    iget-object v4, p0, Lcom/quicinc/cne/CNE;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 1551
    .local v4, "looper":Landroid/os/Looper;
    if-nez v4, :cond_1

    .line 1552
    const-string v0, "CORE"

    const-string v1, "Looper obj is NULL."

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    return-void

    .line 1555
    :cond_1
    new-instance v5, Lcom/quicinc/cne/CNE$CNESender;

    invoke-direct {v5, p0, v4}, Lcom/quicinc/cne/CNE$CNESender;-><init>(Lcom/quicinc/cne/CNE;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/quicinc/cne/CNE;->mSender:Lcom/quicinc/cne/CNE$CNESender;

    .line 1557
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1558
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1560
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1561
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1562
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1563
    const-string v6, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1564
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1565
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1566
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1567
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1568
    const-string v6, "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1569
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1576
    const-string v6, "com.quicinc.cne.TEST_SEND_RAT_INFO"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1577
    const-string v6, "persist.cne.feature"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1579
    .local v6, "value":I
    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1581
    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/quicinc/cne/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1582
    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/quicinc/cne/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1583
    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/quicinc/cne/CNE;->mPowerManager:Landroid/os/PowerManager;

    .line 1584
    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mPowerManager:Landroid/os/PowerManager;

    const-string v8, "NAT_KA_WAKELOCK"

    invoke-virtual {v7, v1, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/quicinc/cne/CNE;->mNatKaWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1585
    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mPowerManager:Landroid/os/PowerManager;

    const-string v8, "RSSI_WAKELOCK"

    invoke-virtual {v7, v1, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/quicinc/cne/CNE;->mRssiWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1587
    iput-object v2, p0, Lcom/quicinc/cne/CNE;->profileMap:Ljava/util/HashMap;

    .line 1588
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    .line 1590
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/quicinc/cne/CNE;->mWFCEnabled:Z

    .line 1592
    new-instance v2, Lcom/quicinc/cne/CNE$CNEReceiver;

    invoke-direct {v2, p0}, Lcom/quicinc/cne/CNE$CNEReceiver;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v2, p0, Lcom/quicinc/cne/CNE;->mReceiver:Lcom/quicinc/cne/CNE$CNEReceiver;

    .line 1593
    new-instance v2, Ljava/lang/Thread;

    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mReceiver:Lcom/quicinc/cne/CNE$CNEReceiver;

    const-string v8, "CNEReceiver"

    invoke-direct {v2, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/quicinc/cne/CNE;->mReceiverThread:Ljava/lang/Thread;

    .line 1594
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1596
    new-instance v2, Lcom/quicinc/cne/andsf/AndsfParser;

    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/quicinc/cne/andsf/AndsfParser;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/quicinc/cne/CNE;->andsfParser:Lcom/quicinc/cne/andsf/AndsfParser;

    .line 1598
    const/4 v2, 0x3

    if-ne v6, v2, :cond_2

    .line 1599
    iput-boolean v1, p0, Lcom/quicinc/cne/CNE;->wqeConfigured:Z

    .line 1601
    :cond_2
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->registerMobileDataObserver()V

    .line 1604
    const-string v2, "persist.sys.cnd.wqe"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1605
    .end local v6    # "value":I
    .local v0, "value":I
    iget-boolean v2, p0, Lcom/quicinc/cne/CNE;->wqeConfigured:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    if-ne v2, v0, :cond_3

    .line 1606
    const-string v2, "CORE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendPrefChangedBroadcast wqe status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/quicinc/cne/CNE;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    invoke-direct {p0, v1, v1, v0}, Lcom/quicinc/cne/CNE;->sendPrefChangedBroadcast(III)V

    .line 1610
    :cond_3
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/quicinc/cne/CNE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v6, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1613
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->startNetworks()V

    .line 1615
    return-void
.end method

.method private CneRatTypetoNetworkType(I)I
    .locals 4
    .param p1, "x"    # I

    .line 2766
    const/16 v0, 0xfe

    const/4 v1, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2784
    return v1

    .line 2773
    :pswitch_0
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RAT_WLAN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") transformed into ConnectivityManager.TYPE_WIFI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    return v2

    .line 2768
    :pswitch_1
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RAT_WWAN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") transformed into ConnectivityManager.TYPE_MOBILE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    return v2

    .line 2778
    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private DetailedNetworkStateToFineNetworkState(Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$State;
    .locals 2
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .line 2299
    sget-object v0, Lcom/quicinc/cne/CNE$6;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2311
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2310
    :pswitch_0
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2309
    :pswitch_1
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2308
    :pswitch_2
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2307
    :pswitch_3
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2306
    :pswitch_4
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2305
    :pswitch_5
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2304
    :pswitch_6
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2303
    :pswitch_7
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2302
    :pswitch_8
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2301
    :pswitch_9
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private NetworkStateStringToInt(Ljava/lang/String;)I
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .line 2251
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "SUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v0, "DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "CONNECTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "DISCONNECTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2268
    const/4 v0, 0x5

    return v0

    .line 2265
    :pswitch_0
    return v4

    .line 2262
    :pswitch_1
    return v2

    .line 2259
    :pswitch_2
    return v5

    .line 2256
    :pswitch_3
    return v1

    .line 2253
    :pswitch_4
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7c6dfd17 -> :sswitch_4
        -0x3eb5be5a -> :sswitch_3
        -0x11519548 -> :sswitch_2
        0x37c8963b -> :sswitch_1
        0x430d9dbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    .locals 2
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .line 2273
    sget-object v0, Lcom/quicinc/cne/CNE$6;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2293
    const/4 v0, -0x1

    return v0

    .line 2290
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2287
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2284
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2281
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2278
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2275
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private TEST_RECV_PROTOBUF_MSG([BI)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 3433
    invoke-static {p1, p2}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_RECV_PROTOBUF_MSG([BI)V

    .line 3434
    return-void
.end method

.method private TEST_SEND_PROTOBUF_MSG()V
    .locals 0

    .line 3437
    invoke-static {p0}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_SEND_PROTOBUF_MSG(Lcom/quicinc/cne/CNE;)V

    .line 3438
    return-void
.end method

.method static synthetic access$100(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/quicinc/cne/CNE;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->NetworkStateStringToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Lcom/quicinc/cne/CNE;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/quicinc/cne/CNE;I)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->getSignalStrength(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/quicinc/cne/CNE;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->updateMobileDataState(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/quicinc/cne/CNE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/quicinc/cne/CNE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->updateDefaultNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/quicinc/cne/CNE;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Z

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->sendScreenState(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/quicinc/cne/CNE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Lcom/quicinc/cne/CNE;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/quicinc/cne/CNE;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->sendWifiStatus()V

    return-void
.end method

.method static synthetic access$2100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->_cneWwanInfo:Lcom/quicinc/cne/CNE$CneWwanInfo;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/quicinc/cne/CNE;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->sendWwanStatus()V

    return-void
.end method

.method static synthetic access$2500(Lcom/quicinc/cne/CNE;II)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/quicinc/cne/CNE;->sendWifiApInfo(II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/quicinc/cne/CNE;I)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->sendWifiP2pInfo(I)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/quicinc/cne/CNE;I)Lcom/quicinc/cne/CNERequest;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->findAndRemoveRequestFromList(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/quicinc/cne/CNE;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->postCndUpInit()V

    return-void
.end method

.method static synthetic access$300(Lcom/quicinc/cne/CNE;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->notifySubRat(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/quicinc/cne/CNE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->sendInitReq()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/quicinc/cne/CNE;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->requestFeaturesSettings()V

    return-void
.end method

.method static synthetic access$3200(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {p0, p1}, Lcom/quicinc/cne/CNE;->readCneMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/quicinc/cne/CNE;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/quicinc/cne/CNE;->processResponse([BI)V

    return-void
.end method

.method static synthetic access$3402(Lcom/quicinc/cne/CNE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE;->andsfHasBeenInit:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/quicinc/cne/CNE;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Landroid/net/Network;

    .line 108
    iput-object p1, p0, Lcom/quicinc/cne/CNE;->mWifiNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/quicinc/cne/CNE;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/quicinc/cne/CNE;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mIPFamilyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/quicinc/cne/CNE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE;->IPV4Available:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/quicinc/cne/CNE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE;->IPV6Available:Z

    return p1
.end method

.method static synthetic access$400(Lcom/quicinc/cne/CNE;Landroid/net/NetworkInfo$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Landroid/net/NetworkInfo$State;

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->checkIPFamilyAvailability(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/quicinc/cne/CNE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->isWifiConnected:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/quicinc/cne/CNE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE;->isWifiConnected:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/quicinc/cne/CNE;)I
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->getInetFamily()I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/quicinc/cne/CNE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->sendDefaultRouteIntent:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/quicinc/cne/CNE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE;->sendDefaultRouteIntent:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/quicinc/cne/CNE;I)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->broadcastWqeStateChange(I)V

    return-void
.end method

.method static synthetic access$4702(Lcom/quicinc/cne/CNE;I)I
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/quicinc/cne/CNE;->lastFamilyType:I

    return p1
.end method

.method static synthetic access$4800(Lcom/quicinc/cne/CNE;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)Z
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 108
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE;->compareLinkProperties(Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Lcom/quicinc/cne/CNE;->dloge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5002(Lcom/quicinc/cne/CNE;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;
    .param p1, "x1"    # Landroid/net/Network;

    .line 108
    iput-object p1, p0, Lcom/quicinc/cne/CNE;->mMobileNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/quicinc/cne/CNE;)V
    .locals 0
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->setQuotaReachedStatus()V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/quicinc/cne/CNE;

    .line 108
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Lcom/quicinc/cne/CNE;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private broadcastWqeStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1831
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send wqe state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    new-instance v0, Landroid/content/Intent;

    const-string v1, "prop_state_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1833
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1834
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1835
    return-void
.end method

.method private checkFeatureEnabled(Lcom/quicinc/cne/CNE$FeatureType;)Z
    .locals 6
    .param p1, "feature"    # Lcom/quicinc/cne/CNE$FeatureType;

    .line 3226
    const-string v0, "persist.cne.feature"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3227
    .local v0, "value":I
    const/4 v2, 0x0

    .line 3228
    .local v2, "enabled":Z
    sget-object v3, Lcom/quicinc/cne/CNE$6;->$SwitchMap$com$quicinc$cne$CNE$FeatureType:[I

    invoke-virtual {p1}, Lcom/quicinc/cne/CNE$FeatureType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 3230
    const/4 v2, 0x0

    goto :goto_2

    .line 3229
    :cond_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    move v2, v3

    .line 3232
    :goto_2
    if-nez v2, :cond_3

    .line 3233
    const-string v3, "CORE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->dloge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    return v1

    .line 3236
    :cond_3
    return v4
.end method

.method private checkIPFamilyAvailability(Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 1645
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mIPFamilyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1646
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1647
    :try_start_0
    iput-boolean v1, p0, Lcom/quicinc/cne/CNE;->IPV4Available:Z

    .line 1648
    iput-boolean v1, p0, Lcom/quicinc/cne/CNE;->IPV6Available:Z

    .line 1649
    monitor-exit v0

    return-void

    .line 1666
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1651
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1652
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1653
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->IPV4Available:Z

    .line 1654
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1655
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->IPV6Available:Z

    goto :goto_0

    .line 1657
    :cond_1
    iput-boolean v1, p0, Lcom/quicinc/cne/CNE;->IPV6Available:Z

    goto :goto_0

    .line 1659
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1660
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1661
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->IPV6Available:Z

    .line 1662
    iput-boolean v1, p0, Lcom/quicinc/cne/CNE;->IPV4Available:Z

    goto :goto_0

    .line 1664
    :cond_3
    iput-boolean v1, p0, Lcom/quicinc/cne/CNE;->IPV6Available:Z

    iput-boolean v1, p0, Lcom/quicinc/cne/CNE;->IPV4Available:Z

    .line 1666
    :goto_0
    monitor-exit v0

    .line 1667
    return-void

    .line 1666
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private compareLinkProperties(Landroid/net/LinkProperties;)Z
    .locals 1
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1618
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    .line 1619
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    .line 1620
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    .line 1621
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->isIdenticalStackedLinks(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1618
    :goto_0
    return v0
.end method

.method public static configureSsid(Ljava/lang/String;)Z
    .locals 14
    .param p0, "newStr"    # Ljava/lang/String;

    .line 3053
    const/4 v0, 0x0

    .line 3054
    .local v0, "strMatched":Z
    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/ssidconfig.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3057
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3058
    .local v3, "reader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 3059
    .local v4, "line":Ljava/lang/String;
    const-string v5, ""

    .line 3060
    .local v5, "oldtext":Ljava/lang/String;
    const-string v6, ""

    .line 3062
    .local v6, "oldStr":Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, ":"

    invoke-direct {v7, p0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    .local v7, "newst":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 3064
    .local v8, "newToken":Ljava/lang/String;
    const-string v9, "CORE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureSsid: newToken: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    if-eqz v9, :cond_2

    .line 3066
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 3067
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v10, ":"

    invoke-direct {v9, v4, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    .local v9, "oldst":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3069
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 3070
    .local v10, "oldToken":Ljava/lang/String;
    const-string v11, "CORE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "configureSsid: oldToken: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3072
    const-string v11, "CORE"

    const-string v12, "configSsid entry matched"

    invoke-static {v11, v12}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    move-object v6, v4

    .line 3075
    const/4 v0, 0x1

    .line 3077
    .end local v10    # "oldToken":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 3078
    .end local v9    # "oldst":Ljava/util/StringTokenizer;
    :cond_1
    goto :goto_0

    .line 3079
    :cond_2
    if-nez v0, :cond_3

    .line 3080
    const-string v9, "CORE"

    const-string v10, "configSsid entry not matched"

    invoke-static {v9, v10}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    const/4 v1, 0x0

    return v1

    .line 3084
    :cond_3
    invoke-virtual {v5, v6, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3085
    .local v9, "newtext":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 3086
    new-instance v10, Ljava/io/FileWriter;

    const-string v11, "/data/ssidconfig.txt"

    invoke-direct {v10, v11}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 3087
    .local v10, "writer":Ljava/io/FileWriter;
    invoke-virtual {v10, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3089
    return v1

    .line 3090
    .end local v0    # "strMatched":Z
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "oldtext":Ljava/lang/String;
    .end local v6    # "oldStr":Ljava/lang/String;
    .end local v7    # "newst":Ljava/util/StringTokenizer;
    .end local v8    # "newToken":Ljava/lang/String;
    .end local v9    # "newtext":Ljava/lang/String;
    .end local v10    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 3091
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3093
    .end local v0    # "ioe":Ljava/io/IOException;
    return v1
.end method

.method private convertToNetworkState(Lcom/android/internal/telephony/PhoneConstants$DataState;)Landroid/net/NetworkInfo$State;
    .locals 2
    .param p1, "dataState"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 2317
    sget-object v0, Lcom/quicinc/cne/CNE$6;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2327
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2325
    :pswitch_0
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2323
    :pswitch_1
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2321
    :pswitch_2
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    return-object v0

    .line 2319
    :pswitch_3
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static dlogd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3399
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    return-void
.end method

.method private static dloge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3411
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    return-void
.end method

.method private static dlogi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3405
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    return-void
.end method

.method private static dlogv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3402
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    return-void
.end method

.method private static dlogw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3408
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p1, "serial"    # I

    .line 1896
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1897
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1898
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quicinc/cne/CNERequest;

    .line 1899
    .local v3, "rr":Lcom/quicinc/cne/CNERequest;
    iget v4, v3, Lcom/quicinc/cne/CNERequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 1900
    iget-object v4, p0, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1901
    monitor-exit v0

    return-object v3

    .line 1897
    .end local v3    # "rr":Lcom/quicinc/cne/CNERequest;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1904
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1
    monitor-exit v0

    .line 1905
    const/4 v0, 0x0

    return-object v0

    .line 1904
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getInetFamily()I
    .locals 3

    .line 2476
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mIPFamilyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2477
    :try_start_0
    iget-boolean v1, p0, Lcom/quicinc/cne/CNE;->IPV4Available:Z

    if-eqz v1, :cond_1

    .line 2478
    iget-boolean v1, p0, Lcom/quicinc/cne/CNE;->IPV6Available:Z

    if-eqz v1, :cond_0

    .line 2479
    const-string v1, "CORE"

    const-string v2, "V4_V6 connected"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 2482
    :cond_0
    const-string v1, "CORE"

    const-string v2, "V4 connected"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2484
    :cond_1
    iget-boolean v1, p0, Lcom/quicinc/cne/CNE;->IPV6Available:Z

    if-eqz v1, :cond_2

    .line 2485
    const-string v1, "CORE"

    const-string v2, "V6 connected"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    const/4 v1, 0x2

    monitor-exit v0

    return v1

    .line 2488
    :cond_2
    const-string v1, "CORE"

    const-string v2, "No family connected"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPhone()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .line 1503
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getSignalStrength(I)I
    .locals 4
    .param p1, "networkType"    # I

    .line 2332
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2333
    const-string v0, "CORE"

    const-string v2, "getSignalStrength mSignalStrength in null"

    invoke-static {v0, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    return v1

    .line 2336
    :cond_0
    const-string v0, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSignalStrength networkType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    packed-switch p1, :pswitch_data_0

    .line 2355
    return v1

    .line 2352
    :pswitch_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    return v0

    .line 2348
    :pswitch_1
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    return v0

    .line 2345
    :pswitch_2
    const/16 v0, -0x71

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleBSSIDBlacklist(IILjava/lang/String;)V
    .locals 4
    .param p1, "disallowed"    # I
    .param p2, "reason"    # I
    .param p3, "bssid"    # Ljava/lang/String;

    .line 1838
    new-instance v0, Landroid/content/Intent;

    const-string v1, "blacklist_bad_bssid"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "blacklistBSSID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1840
    const-string v1, "BSSIDToBlacklist"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1841
    const-string v1, "blacklistReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1842
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blacklistBSSID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1844
    return-void
.end method

.method private handleDisallowedApMsg(Lcom/quicinc/cne/Native$DisallowedAP;)V
    .locals 6
    .param p1, "p"    # Lcom/quicinc/cne/Native$DisallowedAP;

    .line 2581
    if-nez p1, :cond_0

    .line 2582
    return-void

    .line 2584
    :cond_0
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$DisallowedAP;->getDisallowed()I

    move-result v0

    .line 2585
    .local v0, "disallowed":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$DisallowedAP;->getReason()I

    move-result v1

    .line 2586
    .local v1, "reason":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$DisallowedAP;->getBssid()Ljava/lang/String;

    move-result-object v2

    .line 2587
    .local v2, "bssid":Ljava/lang/String;
    const-string v3, "CORE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDisallowedApMsg(): NOTIFY_DISALLOWED_AP received. Blacklist BSSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "disallowed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    invoke-direct {p0, v0, v1, v2}, Lcom/quicinc/cne/CNE;->handleBSSIDBlacklist(IILjava/lang/String;)V

    .line 2591
    return-void
.end method

.method private handleFeatureStatusNotification(Lcom/quicinc/cne/Native$FeatureInfo;)V
    .locals 5
    .param p1, "p"    # Lcom/quicinc/cne/Native$FeatureInfo;

    .line 2860
    if-nez p1, :cond_0

    .line 2861
    return-void

    .line 2863
    :cond_0
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v0

    .line 2864
    .local v0, "featureId":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureStatus()I

    move-result v1

    .line 2866
    .local v1, "featureStatus":I
    const-string v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFeatureStatusNotification(): feature id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " feature status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 2870
    monitor-enter p0

    .line 2871
    if-ne v1, v2, :cond_1

    .line 2872
    :try_start_0
    iput-boolean v4, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    .line 2873
    iput-boolean v4, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureRequestedState:Z

    goto :goto_0

    .line 2882
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2874
    :cond_1
    if-ne v1, v4, :cond_2

    .line 2875
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    .line 2876
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureRequestedState:Z

    goto :goto_0

    .line 2878
    :cond_2
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    .line 2879
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureRequestedState:Z

    .line 2880
    const-string v2, "CORE"

    const-string v3, "handleFeatureStatusNotification():unknown feature status."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2884
    iget-boolean v2, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/quicinc/cne/CNE;->wqeConfigured:Z

    if-eqz v2, :cond_7

    .line 2885
    const-string v2, "CORE"

    const-string v3, "WQE is configured, stop network"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->stopNetworks()V

    .line 2887
    invoke-direct {p0, v4}, Lcom/quicinc/cne/CNE;->updateWqeStateChange(I)V

    goto :goto_4

    .line 2882
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2889
    :cond_3
    if-ne v0, v2, :cond_6

    .line 2890
    monitor-enter p0

    .line 2891
    if-ne v1, v2, :cond_4

    .line 2892
    :try_start_2
    iput-boolean v4, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureEnabled:Z

    .line 2893
    iput-boolean v4, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureRequestedState:Z

    goto :goto_2

    .line 2902
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 2894
    :cond_4
    if-ne v1, v4, :cond_5

    .line 2895
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureEnabled:Z

    .line 2896
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureRequestedState:Z

    goto :goto_2

    .line 2898
    :cond_5
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureEnabled:Z

    .line 2899
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureRequestedState:Z

    .line 2900
    const-string v2, "CORE"

    const-string v3, "handleFeatureStatusNotification():unknown feature status."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 2904
    :cond_6
    const-string v2, "CORE"

    const-string v3, "handleFeatureStatusNotification(): unknown feature id."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    :cond_7
    :goto_4
    return-void
.end method

.method private handleFeatureStatusSetResponse(Lcom/quicinc/cne/Native$FeatureRespMsg;)V
    .locals 7
    .param p1, "p"    # Lcom/quicinc/cne/Native$FeatureRespMsg;

    .line 2799
    if-nez p1, :cond_0

    .line 2800
    return-void

    .line 2803
    :cond_0
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureType()I

    move-result v0

    .line 2804
    .local v0, "featureId":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureStatus()I

    move-result v1

    .line 2805
    .local v1, "featureStatus":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getResult()I

    move-result v2

    .line 2807
    .local v2, "error":I
    const-string v3, "CORE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFeatureStatusSetResponse(): feature id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " feature status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    if-nez v2, :cond_a

    .line 2811
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 2812
    monitor-enter p0

    .line 2813
    if-ne v1, v4, :cond_1

    .line 2814
    :try_start_0
    iput-boolean v5, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    goto :goto_0

    .line 2822
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 2815
    :cond_1
    if-ne v1, v5, :cond_2

    .line 2816
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    goto :goto_0

    .line 2818
    :cond_2
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    .line 2819
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureRequestedState:Z

    .line 2820
    const-string v3, "CORE"

    const-string v6, "handleFeatureStatusSetResponse():unknown feature status."

    invoke-static {v3, v6}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2823
    iget-boolean v3, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    move v3, v4

    .line 2824
    .local v3, "state":I
    invoke-direct {p0, v5, v5, v3}, Lcom/quicinc/cne/CNE;->sendPrefChangedBroadcast(III)V

    .line 2825
    iget-boolean v4, p0, Lcom/quicinc/cne/CNE;->wqeConfigured:Z

    if-eqz v4, :cond_b

    .line 2826
    const-string v4, "CORE"

    const-string v5, "WQE is configured"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    iget-boolean v4, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    if-eqz v4, :cond_4

    .line 2829
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->startNetworks()V

    goto :goto_6

    .line 2831
    :cond_4
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->stopNetworks()V

    goto :goto_6

    .line 2822
    .end local v3    # "state":I
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2836
    :cond_5
    if-ne v0, v4, :cond_9

    .line 2837
    monitor-enter p0

    .line 2838
    if-ne v1, v4, :cond_6

    .line 2839
    :try_start_2
    iput-boolean v5, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureEnabled:Z

    goto :goto_3

    .line 2847
    :catchall_1
    move-exception v3

    goto :goto_5

    .line 2840
    :cond_6
    if-ne v1, v5, :cond_7

    .line 2841
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureEnabled:Z

    goto :goto_3

    .line 2843
    :cond_7
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureEnabled:Z

    .line 2844
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureRequestedState:Z

    .line 2845
    const-string v3, "CORE"

    const-string v6, "handleFeatureStatusSetResponse():unknown feature status."

    invoke-static {v3, v6}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2848
    iget-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureEnabled:Z

    if-eqz v3, :cond_8

    move v3, v4

    goto :goto_4

    :cond_8
    move v3, v5

    .line 2849
    .restart local v3    # "state":I
    :goto_4
    invoke-direct {p0, v4, v5, v3}, Lcom/quicinc/cne/CNE;->sendPrefChangedBroadcast(III)V

    goto :goto_6

    .line 2847
    .end local v3    # "state":I
    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2851
    :cond_9
    const-string v3, "CORE"

    const-string v4, "handleFeatureStatusSetResponse(): unknown feature id."

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2854
    :cond_a
    const-string v3, "CORE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFeatureStatusSetResponse(): response error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    :cond_b
    :goto_6
    return-void
.end method

.method private handlePolicyUpdateResponse(Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;)V
    .locals 4
    .param p1, "p"    # Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    .line 2634
    if-nez p1, :cond_0

    .line 2635
    return-void

    .line 2637
    :cond_0
    const-string v0, "CORE"

    const-string v1, "handlePolicyUpdateResponse called"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getPolicy()I

    move-result v0

    .line 2639
    .local v0, "policy":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getResult()I

    move-result v1

    .line 2640
    .local v1, "result":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2643
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/quicinc/cne/CNE;->setPolicyConfigUpdateBusy(IZ)V

    .line 2645
    :cond_1
    return-void
.end method

.method private handlePostBqeResult(Lcom/quicinc/cne/Native$BqePostParamsMsg;)V
    .locals 14
    .param p1, "p"    # Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 2608
    if-nez p1, :cond_0

    .line 2609
    return-void

    .line 2611
    :cond_0
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getBssid()Ljava/lang/String;

    move-result-object v8

    .line 2612
    .local v8, "bssid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getUri()Ljava/lang/String;

    move-result-object v9

    .line 2613
    .local v9, "uri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTputKiloBitsPerSec()I

    move-result v10

    .line 2614
    .local v10, "tputKiloBitsPerSec":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTimeStampSec()I

    move-result v11

    .line 2616
    .local v11, "timestampSec":I
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePostBqeResult called, bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " URI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tput="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timestampSec= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/quicinc/cne/BQEClient;

    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/quicinc/cne/CNE;->getRequestUrl:Ljava/lang/String;

    .line 2622
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2623
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v13

    move-object v1, p0

    move-object v3, v9

    move-object v5, v8

    invoke-direct/range {v0 .. v7}, Lcom/quicinc/cne/BQEClient;-><init>(Lcom/quicinc/cne/CNE;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 2624
    return-void
.end method

.method private handleQuotaQuery()V
    .locals 2

    .line 1043
    const-string v0, "CORE"

    const-string v1, "Handle quota query"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mMobileNetwork:Landroid/net/Network;

    if-nez v0, :cond_0

    .line 1045
    const-string v0, "CORE"

    const-string v1, "mMobileNetwork is null, sending cached quota info"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->mIsQuotaReached:Z

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE;->sendQuotaInfo(Z)V

    goto :goto_0

    .line 1049
    :cond_0
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->setQuotaReachedStatus()V

    .line 1050
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->mIsQuotaReached:Z

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE;->sendQuotaInfo(Z)V

    .line 1052
    :goto_0
    return-void
.end method

.method private handleRatRequest(ZLcom/quicinc/cne/Native$RatRequest;)V
    .locals 4
    .param p1, "bringUp"    # Z
    .param p2, "p"    # Lcom/quicinc/cne/Native$RatRequest;

    .line 2910
    if-nez p2, :cond_0

    return-void

    .line 2911
    :cond_0
    invoke-virtual {p2}, Lcom/quicinc/cne/Native$RatRequest;->getRattype()I

    move-result v0

    .line 2912
    .local v0, "netType":I
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRatRequest net Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    const/4 v1, 0x0

    .line 2914
    .local v1, "netCb":Lcom/quicinc/cne/CNENetworkCallback;
    if-eqz p1, :cond_2

    .line 2915
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2916
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/quicinc/cne/CNENetworkCallback;

    .line 2917
    if-eqz v1, :cond_3

    .line 2918
    invoke-virtual {v1}, Lcom/quicinc/cne/CNENetworkCallback;->getRatInfo()Lcom/quicinc/cne/CNE$CneRatInfo;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/quicinc/cne/CNE;->sendRatInfo(Lcom/quicinc/cne/CNE$CneRatInfo;I)V

    .line 2919
    return-void

    .line 2922
    :cond_1
    new-instance v2, Lcom/quicinc/cne/CNENetworkCallback;

    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/quicinc/cne/CNENetworkCallback;-><init>(Lcom/quicinc/cne/CNE;Landroid/content/Context;)V

    move-object v1, v2

    .line 2923
    nop

    .line 2924
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    invoke-virtual {v1, v0}, Lcom/quicinc/cne/CNENetworkCallback;->createNetworkRequest(I)V

    goto :goto_0

    .line 2931
    :cond_2
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/quicinc/cne/CNENetworkCallback;

    .line 2932
    if-eqz v1, :cond_3

    .line 2933
    invoke-virtual {v1}, Lcom/quicinc/cne/CNENetworkCallback;->destroyNetworkRequest()V

    .line 2934
    const/4 v1, 0x0

    .line 2937
    :cond_3
    :goto_0
    return-void
.end method

.method private handleRequestUpdatePolicy()V
    .locals 5

    .line 2228
    const/4 v0, 0x0

    .line 2229
    .local v0, "success":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "data/connectivity/profile-internet.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2230
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/16 v3, 0x3e8

    if-eqz v2, :cond_1

    .line 2232
    :try_start_0
    const-string v2, "data/connectivity/profile-internet.xml"

    invoke-direct {p0, v2}, Lcom/quicinc/cne/CNE;->updateOperatorPolicy(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 2233
    const/4 v0, 0x1

    .line 2237
    :cond_0
    :goto_0
    goto :goto_1

    .line 2235
    :catch_0
    move-exception v2

    .line 2236
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 2240
    :cond_1
    const-string v2, "CORE"

    const-string v4, "Using Fallback andsfCne.xml"

    invoke-static {v2, v4}, Lcom/quicinc/cne/CNE;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    :try_start_1
    const-string v2, "system/etc/cne/andsfCne.xml"

    invoke-direct {p0, v2}, Lcom/quicinc/cne/CNE;->updateOperatorPolicy(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v3, :cond_2

    .line 2243
    const/4 v0, 0x1

    .line 2247
    :cond_2
    goto :goto_1

    .line 2245
    :catch_1
    move-exception v2

    .line 2246
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2249
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private handleRssiOffloadRequest(ILcom/quicinc/cne/Native$RssiOffloadMsg;)V
    .locals 12
    .param p1, "requestType"    # I
    .param p2, "p"    # Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 2092
    if-nez p2, :cond_0

    .line 2093
    return-void

    .line 2095
    :cond_0
    invoke-virtual {p2}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getProfileName()Ljava/lang/String;

    move-result-object v0

    .line 2098
    .local v0, "profile":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mProfileIDPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")[0-9]*$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2099
    .local v1, "pt":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2100
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2101
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mProfileIDPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2110
    invoke-virtual {p2}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 2111
    .local v3, "operatorName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiHigh()I

    move-result v4

    .line 2112
    .local v4, "rssiHigh":I
    invoke-virtual {p2}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiLow()I

    move-result v5

    .line 2113
    .local v5, "rssiLow":I
    const-string v6, "CORE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received RSSI offload request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and operator: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with override high: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and override low: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    if-nez p1, :cond_2

    .line 2121
    iget-object v6, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2122
    iget-object v6, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/quicinc/cne/CMProfileTracker;

    .line 2123
    .local v6, "profTracker":Lcom/quicinc/cne/CMProfileTracker;
    if-eqz v6, :cond_1

    .line 2124
    invoke-virtual {v6}, Lcom/quicinc/cne/CMProfileTracker;->stop()V

    .line 2126
    :cond_1
    iget-object v7, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    .end local v6    # "profTracker":Lcom/quicinc/cne/CMProfileTracker;
    goto/16 :goto_1

    .line 2128
    :cond_2
    const/4 v6, 0x1

    if-ne p1, v6, :cond_e

    .line 2130
    iget-object v6, p0, Lcom/quicinc/cne/CNE;->profileMap:Ljava/util/HashMap;

    if-nez v6, :cond_7

    .line 2131
    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->readProfile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 2133
    .local v6, "profileMapTmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    if-eqz v6, :cond_6

    .line 2140
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/quicinc/cne/CNE$CMProfile;

    .line 2141
    .local v7, "profileTmp":Lcom/quicinc/cne/CNE$CMProfile;
    if-eqz v7, :cond_5

    .line 2148
    invoke-virtual {v7, v3}, Lcom/quicinc/cne/CNE$CMProfile;->setOperatorName(Ljava/lang/String;)V

    .line 2149
    if-gez v4, :cond_3

    .line 2150
    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5200(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v8

    sub-int v8, v4, v8

    .line 2151
    .local v8, "delta":I
    invoke-static {v7, v4}, Lcom/quicinc/cne/CNE$CMProfile;->access$5202(Lcom/quicinc/cne/CNE$CMProfile;I)I

    .line 2152
    invoke-static {v7, v8}, Lcom/quicinc/cne/CNE$CMProfile;->access$5312(Lcom/quicinc/cne/CNE$CMProfile;I)I

    .line 2153
    const-string v9, "CORE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add --- For 2.4GHz "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5200(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " For 5GHz: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5300(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " delta: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2153
    invoke-static {v9, v10}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    .end local v8    # "delta":I
    :cond_3
    if-gez v5, :cond_4

    .line 2157
    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5400(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v8

    sub-int v8, v5, v8

    .line 2158
    .restart local v8    # "delta":I
    invoke-static {v7, v5}, Lcom/quicinc/cne/CNE$CMProfile;->access$5402(Lcom/quicinc/cne/CNE$CMProfile;I)I

    .line 2159
    invoke-static {v7, v8}, Lcom/quicinc/cne/CNE$CMProfile;->access$5512(Lcom/quicinc/cne/CNE$CMProfile;I)I

    .line 2160
    const-string v9, "CORE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Drop --- For 2.4GHz "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5400(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " For 5GHz: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5500(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " delta: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2160
    invoke-static {v9, v10}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    .end local v8    # "delta":I
    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/quicinc/cne/CNE;->profileMap:Ljava/util/HashMap;

    .line 2165
    iget-object v8, p0, Lcom/quicinc/cne/CNE;->profileMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    .end local v6    # "profileMapTmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    .end local v7    # "profileTmp":Lcom/quicinc/cne/CNE$CMProfile;
    goto/16 :goto_0

    .line 2142
    .restart local v6    # "profileMapTmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    .restart local v7    # "profileTmp":Lcom/quicinc/cne/CNE$CMProfile;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not read profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from map. Cannot proceed further!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2144
    .local v8, "errorStr":Ljava/lang/String;
    const-string v9, "CORE"

    invoke-static {v9, v8}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2134
    .end local v7    # "profileTmp":Lcom/quicinc/cne/CNE$CMProfile;
    .end local v8    # "errorStr":Ljava/lang/String;
    :cond_6
    const-string v7, "Could not read profile. Cannot proceed further!"

    .line 2135
    .local v7, "errorStr":Ljava/lang/String;
    const-string v8, "CORE"

    invoke-static {v8, v7}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2167
    .end local v6    # "profileMapTmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    .end local v7    # "errorStr":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/quicinc/cne/CNE;->profileMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2169
    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->readProfile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 2171
    .restart local v6    # "profileMapTmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    if-eqz v6, :cond_a

    .line 2180
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/quicinc/cne/CNE$CMProfile;

    .line 2181
    .local v7, "profileTmp":Lcom/quicinc/cne/CNE$CMProfile;
    invoke-virtual {v7, v3}, Lcom/quicinc/cne/CNE$CMProfile;->setOperatorName(Ljava/lang/String;)V

    .line 2182
    if-gez v4, :cond_8

    .line 2183
    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5200(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v8

    sub-int v8, v4, v8

    .line 2184
    .local v8, "delta":I
    invoke-static {v7, v4}, Lcom/quicinc/cne/CNE$CMProfile;->access$5202(Lcom/quicinc/cne/CNE$CMProfile;I)I

    .line 2185
    invoke-static {v7, v8}, Lcom/quicinc/cne/CNE$CMProfile;->access$5312(Lcom/quicinc/cne/CNE$CMProfile;I)I

    .line 2186
    const-string v9, "CORE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add --- For 2.4GHz "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5200(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " For 5GHz: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5300(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " delta: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2186
    invoke-static {v9, v10}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    .end local v8    # "delta":I
    :cond_8
    if-gez v5, :cond_9

    .line 2190
    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5400(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v8

    sub-int v8, v5, v8

    .line 2191
    .restart local v8    # "delta":I
    invoke-static {v7, v5}, Lcom/quicinc/cne/CNE$CMProfile;->access$5402(Lcom/quicinc/cne/CNE$CMProfile;I)I

    .line 2192
    invoke-static {v7, v8}, Lcom/quicinc/cne/CNE$CMProfile;->access$5512(Lcom/quicinc/cne/CNE$CMProfile;I)I

    .line 2193
    const-string v9, "CORE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Drop --- For 2.4GHz "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5400(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " For 5GHz: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    invoke-static {v7}, Lcom/quicinc/cne/CNE$CMProfile;->access$5500(Lcom/quicinc/cne/CNE$CMProfile;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " delta: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2193
    invoke-static {v9, v10}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    .end local v8    # "delta":I
    :cond_9
    iget-object v8, p0, Lcom/quicinc/cne/CNE;->profileMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "profileMapTmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    .end local v7    # "profileTmp":Lcom/quicinc/cne/CNE$CMProfile;
    goto :goto_0

    .line 2172
    .restart local v6    # "profileMapTmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    :cond_a
    const-string v7, "Could not read profile. Cannot proceed further!"

    .line 2173
    .local v7, "errorStr":Ljava/lang/String;
    const-string v8, "CORE"

    invoke-static {v8, v7}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2201
    .end local v6    # "profileMapTmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    .end local v7    # "errorStr":Ljava/lang/String;
    :cond_b
    :goto_0
    iget-object v6, p0, Lcom/quicinc/cne/CNE;->profileMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2202
    const-string v6, "CORE"

    const-string v7, "Found matching configuration"

    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    iget-object v6, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2205
    const-string v6, "CORE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "already started, stopping it first"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    iget-object v6, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/quicinc/cne/CMProfileTracker;

    .line 2207
    .local v6, "profTracker":Lcom/quicinc/cne/CMProfileTracker;
    if-eqz v6, :cond_c

    .line 2208
    invoke-virtual {v6}, Lcom/quicinc/cne/CMProfileTracker;->stop()V

    .line 2210
    :cond_c
    iget-object v7, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    .end local v6    # "profTracker":Lcom/quicinc/cne/CMProfileTracker;
    :cond_d
    :try_start_0
    new-instance v6, Lcom/quicinc/cne/CMProfileTracker;

    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/quicinc/cne/CNE;->profileMap:Ljava/util/HashMap;

    .line 2214
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/quicinc/cne/CNE$CMProfile;

    invoke-direct {v6, p0, v7, v8}, Lcom/quicinc/cne/CMProfileTracker;-><init>(Lcom/quicinc/cne/CNE;Landroid/content/Context;Lcom/quicinc/cne/CNE$CMProfile;)V

    .line 2215
    .restart local v6    # "profTracker":Lcom/quicinc/cne/CMProfileTracker;
    nop

    .line 2216
    invoke-virtual {v6}, Lcom/quicinc/cne/CMProfileTracker;->start()V

    .line 2217
    iget-object v7, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2222
    .end local v6    # "profTracker":Lcom/quicinc/cne/CMProfileTracker;
    goto :goto_1

    .line 2220
    :catch_0
    move-exception v6

    .line 2221
    .local v6, "npe":Ljava/lang/NullPointerException;
    const-string v7, "CORE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profileTrackerMap is null "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/quicinc/cne/CNE;->dloge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_e
    :goto_1
    return-void

    .line 2103
    .end local v3    # "operatorName":Ljava/lang/String;
    .end local v4    # "rssiHigh":I
    .end local v5    # "rssiLow":I
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Cannot proceed further!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2105
    .local v3, "errorStr":Ljava/lang/String;
    const-string v4, "CORE"

    invoke-static {v4, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private handleSetDefaultRouteMsg(Lcom/quicinc/cne/Native$SetDefaultRouteMsg;)V
    .locals 4
    .param p1, "p"    # Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    .line 2739
    if-nez p1, :cond_0

    .line 2740
    return-void

    .line 2742
    :cond_0
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->getRattype()I

    move-result v0

    .line 2743
    .local v0, "ratType":I
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetDefaultRouteMsg for ratType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE;->updateWqeStateChange(I)V

    .line 2746
    return-void
.end method

.method private handleStartActiveBQEMsg(Lcom/quicinc/cne/Native$BqeActiveProbeMsg;)V
    .locals 11
    .param p1, "p"    # Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 2594
    if-nez p1, :cond_0

    .line 2595
    return-void

    .line 2597
    :cond_0
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getBssid()Ljava/lang/String;

    move-result-object v6

    .line 2598
    .local v6, "bssid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getUri()Ljava/lang/String;

    move-result-object v7

    .line 2599
    .local v7, "uri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getFileSize()Ljava/lang/String;

    move-result-object v8

    .line 2600
    .local v8, "fileSize":Ljava/lang/String;
    iput-object v7, p0, Lcom/quicinc/cne/CNE;->getRequestUrl:Ljava/lang/String;

    .line 2601
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartActiveBQEMsg called, bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " URI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/quicinc/cne/BQEClient;

    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, v10

    move-object v1, p0

    move-object v3, v7

    move-object v4, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/quicinc/cne/BQEClient;-><init>(Lcom/quicinc/cne/CNE;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 2604
    return-void
.end method

.method private handleStartICDMsg(Lcom/quicinc/cne/Native$IcdStartMsg;)V
    .locals 15
    .param p1, "p"    # Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 2749
    if-nez p1, :cond_0

    .line 2750
    return-void

    .line 2752
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 2753
    .local v8, "uri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v9

    .line 2754
    .local v9, "httpuri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getBssid()Ljava/lang/String;

    move-result-object v10

    .line 2755
    .local v10, "bssid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTimeout()I

    move-result v11

    .line 2756
    .local v11, "timeout":I
    invoke-virtual/range {p1 .. p1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTid()I

    move-result v12

    .line 2757
    .local v12, "tid":I
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartICDMsg called with uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " httpuri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bssid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timeout= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Lcom/quicinc/cne/ICDClient;

    move-object v7, p0

    iget-object v2, v7, Lcom/quicinc/cne/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, v14

    move-object v1, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/quicinc/cne/ICDClient;-><init>(Lcom/quicinc/cne/CNE;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2761
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 2762
    return-void
.end method

.method private handleStartNatKeepAliveMsg(Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;)V
    .locals 12
    .param p1, "p"    # Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 2678
    if-nez p1, :cond_0

    .line 2679
    return-void

    .line 2681
    :cond_0
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getTimer()I

    move-result v7

    .line 2682
    .local v7, "timer":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSrcPort()I

    move-result v8

    .line 2683
    .local v8, "srcPort":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestPort()I

    move-result v9

    .line 2684
    .local v9, "dstPort":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestIp()Ljava/lang/String;

    move-result-object v10

    .line 2685
    .local v10, "ip":Ljava/lang/String;
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unparcel NAT Keep alive msg: timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ip address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    const/4 v0, 0x0

    .line 2689
    .local v0, "srcAddr":Ljava/net/InetAddress;
    :try_start_0
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    invoke-virtual {v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv4Address()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_2

    .line 2690
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    invoke-virtual {v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv4Address()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    .line 2695
    .end local v0    # "srcAddr":Ljava/net/InetAddress;
    .local v11, "srcAddr":Ljava/net/InetAddress;
    :cond_1
    :goto_0
    move-object v11, v0

    goto :goto_1

    .line 2692
    .end local v11    # "srcAddr":Ljava/net/InetAddress;
    .restart local v0    # "srcAddr":Ljava/net/InetAddress;
    :cond_2
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    invoke-virtual {v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv6Address()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 2693
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    invoke-virtual {v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv6Address()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 2695
    .end local v0    # "srcAddr":Ljava/net/InetAddress;
    .restart local v11    # "srcAddr":Ljava/net/InetAddress;
    :goto_1
    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 2696
    .local v6, "dstAddr":Ljava/net/InetAddress;
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 2697
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2699
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mWifiNetwork:Landroid/net/Network;

    iget-object v3, p0, Lcom/quicinc/cne/CNE;->pkaCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move v2, v7

    move-object v4, v11

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Landroid/net/ConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;

    move-result-object v1

    iput-object v1, p0, Lcom/quicinc/cne/CNE;->mPacketKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "dstAddr":Ljava/net/InetAddress;
    .end local v11    # "srcAddr":Ljava/net/InetAddress;
    goto :goto_2

    .line 2705
    :catch_0
    move-exception v0

    .line 2706
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v1, "CORE"

    const-string v2, "Unable to convert ip to InetAddress."

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/net/UnknownHostException;
    goto :goto_3

    .line 2702
    :catch_1
    move-exception v0

    .line 2703
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CORE"

    const-string v2, "InetAddress is null"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_2
    nop

    .line 2708
    :goto_3
    return-void
.end method

.method private handleStopActiveBQEMsg()V
    .locals 2

    .line 2628
    const-string v0, "CORE"

    const-string v1, "handleStopActiveBQEMsg called"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    invoke-static {}, Lcom/quicinc/cne/BQEClient;->stop()V

    .line 2630
    return-void
.end method

.method private handleStopNatKeepAliveMsg()V
    .locals 3

    .line 2712
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mPacketKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager$PacketKeepalive;->stop()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2716
    goto :goto_0

    .line 2714
    :catch_0
    move-exception v0

    .line 2715
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CORE"

    const-string v2, "packetKeepalive is Null"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method private static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3384
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3396
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    return-void
.end method

.method private static logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3390
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3391
    return-void
.end method

.method private static logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3387
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    return-void
.end method

.method private static logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3393
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    return-void
.end method

.method private notifyMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2420
    invoke-static {p1}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestMobileData(Z)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2421
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2422
    const-string v1, "CORE"

    const-string v2, "notifyMobileDataEnabled: rr=NULL - not updated"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    return-void

    .line 2425
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2426
    return-void
.end method

.method private notifySubRat(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 344
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 345
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->createSubRatRequest(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 346
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 347
    const-string v1, "CORE"

    const-string v2, "notifySubRat: rr=NULL - not updated"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 351
    return-void
.end method

.method private static parseBwString(Ljava/lang/String;)I
    .locals 6
    .param p0, "rate"    # Ljava/lang/String;

    .line 3022
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3024
    :cond_0
    const/4 v1, 0x1

    .line 3025
    .local v1, "rateMultiple":I
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kbps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "kbit/s"

    .line 3026
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "kb/s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3028
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mbps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Mbit/s"

    .line 3029
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Mb/s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 3031
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gbps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Gbit/s"

    .line 3032
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Gb/s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3033
    :cond_3
    const v1, 0x3b9aca00

    goto :goto_2

    .line 3030
    :cond_4
    :goto_0
    const v1, 0xf4240

    goto :goto_2

    .line 3027
    :cond_5
    :goto_1
    const/16 v1, 0x3e8

    .line 3037
    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3038
    .local v2, "trimPosition":I
    move v3, v0

    .local v3, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 3039
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-le v4, v5, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-lt v4, v5, :cond_7

    goto :goto_4

    .line 3038
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3040
    :cond_8
    :goto_4
    move v2, v3

    .line 3041
    nop

    .line 3044
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3045
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const-string p0, "0"

    .line 3047
    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v1

    return v0
.end method

.method private postCndUpInit()V
    .locals 7

    .line 1411
    const-string v0, "CORE"

    const-string v1, "starting initialization of components that require cnd to have started"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->sendWifiStatus()V

    .line 1419
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/CNE;->lastFamilyType:I

    .line 1421
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    .line 1423
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1424
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    iget v1, v1, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 1425
    iput-boolean v2, p0, Lcom/quicinc/cne/CNE;->isWifiConnected:Z

    .line 1426
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mWifiNetwork:Landroid/net/Network;

    if-eqz v1, :cond_2

    .line 1427
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mWifiNetwork:Landroid/net/Network;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1428
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    const/4 v3, 0x0

    .line 1429
    .local v3, "isValidated":Z
    if-eqz v1, :cond_0

    .line 1430
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    .line 1432
    :cond_0
    iget-boolean v4, p0, Lcom/quicinc/cne/CNE;->isWifiConnected:Z

    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->getInetFamily()I

    move-result v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/quicinc/cne/CNE;->notifyWlanConnectivityUp(ZIZ)Z

    .line 1434
    .end local v1    # "nc":Landroid/net/NetworkCapabilities;
    .end local v3    # "isValidated":Z
    goto :goto_0

    .line 1436
    :cond_1
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->isWifiConnected:Z

    .line 1437
    iget-boolean v1, p0, Lcom/quicinc/cne/CNE;->isWifiConnected:Z

    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->getInetFamily()I

    move-result v3

    invoke-virtual {p0, v1, v3, v0}, Lcom/quicinc/cne/CNE;->notifyWlanConnectivityUp(ZIZ)Z

    .line 1441
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->sendWwanStatus()V

    .line 1443
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 1444
    .local v1, "enabled":Z
    invoke-direct {p0, v1}, Lcom/quicinc/cne/CNE;->notifyMobileDataEnabled(Z)V

    .line 1447
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v3, :cond_3

    .line 1448
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mScreenOn:Z

    .line 1449
    iget-boolean v3, p0, Lcom/quicinc/cne/CNE;->mScreenOn:Z

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->sendScreenState(Z)V

    .line 1454
    :cond_3
    iget v3, p0, Lcom/quicinc/cne/CNE;->mDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->sendDefaultNwMsg(I)Z

    .line 1456
    invoke-direct {p0, v2, v0}, Lcom/quicinc/cne/CNE;->setPolicyConfigUpdateBusy(IZ)V

    .line 1457
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->andsfHasBeenInit:Z

    if-nez v0, :cond_7

    .line 1458
    const/4 v0, 0x0

    .line 1459
    .local v0, "success":Z
    new-instance v3, Ljava/io/File;

    const-string v4, "data/connectivity/profile-internet.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v5, 0x3e8

    if-eqz v4, :cond_5

    .line 1462
    :try_start_0
    const-string v4, "data/connectivity/profile-internet.xml"

    const-string v6, "com.quicinc.cne"

    invoke-virtual {p0, v2, v4, v6}, Lcom/quicinc/cne/CNE;->updatePolicy(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v5, :cond_4

    .line 1463
    const/4 v0, 0x1

    .line 1467
    :cond_4
    :goto_1
    goto :goto_2

    .line 1465
    :catch_0
    move-exception v2

    .line 1466
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 1470
    :cond_5
    const-string v4, "CORE"

    const-string v6, "Using Fallback andsfCne.xml"

    invoke-static {v4, v6}, Lcom/quicinc/cne/CNE;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :try_start_1
    const-string v4, "system/etc/cne/andsfCne.xml"

    const-string v6, "com.quicinc.cne"

    invoke-virtual {p0, v2, v4, v6}, Lcom/quicinc/cne/CNE;->updatePolicy(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v5, :cond_6

    .line 1473
    const/4 v0, 0x1

    .line 1477
    :cond_6
    goto :goto_2

    .line 1475
    :catch_1
    move-exception v2

    .line 1476
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1479
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_2
    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->andsfHasBeenInit:Z

    .line 1483
    .end local v0    # "success":Z
    .end local v3    # "f":Ljava/io/File;
    :cond_7
    const-string v0, "mobile_data"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE;->updateMobileDataState(Landroid/net/Uri;)V

    .line 1485
    sget-boolean v0, Lcom/quicinc/cne/CNE;->isCndDisconnected:Z

    if-eqz v0, :cond_8

    .line 1486
    const-string v0, "CORE"

    const-string v2, "Recovering from cnd crashed"

    invoke-static {v0, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->mScreenOn:Z

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE;->sendScreenState(Z)V

    .line 1489
    :cond_8
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1490
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1491
    .local v2, "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/quicinc/cne/CNENetworkCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quicinc/cne/CNENetworkCallback;

    invoke-virtual {v3}, Lcom/quicinc/cne/CNENetworkCallback;->getRatInfo()Lcom/quicinc/cne/CNE$CneRatInfo;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/quicinc/cne/CNE;->sendRatInfo(Lcom/quicinc/cne/CNE$CneRatInfo;I)V

    .line 1492
    .end local v2    # "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/quicinc/cne/CNENetworkCallback;>;"
    goto :goto_3

    .line 1494
    :cond_9
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1495
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1496
    .local v2, "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/quicinc/cne/CMProfileTracker;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quicinc/cne/CMProfileTracker;

    invoke-virtual {v3}, Lcom/quicinc/cne/CMProfileTracker;->stop()V

    .line 1497
    .end local v2    # "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/quicinc/cne/CMProfileTracker;>;"
    goto :goto_4

    .line 1498
    :cond_a
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1500
    :cond_b
    return-void
.end method

.method private processResponse([BI)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 1867
    const-string v0, "CORE"

    const-string v1, "received protobuf msg: "

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    :try_start_0
    new-array v0, p2, [B

    .line 1870
    .local v0, "pto":[B
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1871
    invoke-static {v0}, Lcom/quicinc/cne/Native$CneMessage;->parseFrom([B)Lcom/quicinc/cne/Native$CneMessage;

    move-result-object v1

    .line 1872
    .local v1, "msg":Lcom/quicinc/cne/Native$CneMessage;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$CneMessage;->getResponse()I

    move-result v2

    .line 1873
    .local v2, "rspType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1874
    invoke-direct {p0, v1}, Lcom/quicinc/cne/CNE;->processUnsolicited(Lcom/quicinc/cne/Native$CneMessage;)V

    goto :goto_0

    .line 1876
    :cond_0
    if-nez v2, :cond_1

    .line 1877
    invoke-direct {p0, v1}, Lcom/quicinc/cne/CNE;->processSolicited(Lcom/quicinc/cne/Native$CneMessage;)V

    goto :goto_0

    .line 1880
    :cond_1
    const-string v3, "CORE"

    const-string v4, " unknown protobuf msg, ignore."

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "pto":[B
    .end local v1    # "msg":Lcom/quicinc/cne/Native$CneMessage;
    .end local v2    # "rspType":I
    goto :goto_0

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "CORE"

    const-string v2, "NullPointerException while parsing protobuf msg"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 1888
    :catch_1
    move-exception v0

    .line 1889
    .local v0, "ex":Ljava/lang/ArrayStoreException;
    const-string v1, "CORE"

    const-string v2, "ArrayStoreException while parsing protobuf msg"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/ArrayStoreException;
    goto :goto_0

    .line 1886
    :catch_2
    move-exception v0

    .line 1887
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "CORE"

    const-string v2, "IndexOutOfBoundsException while parsing protobuf msg"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 1883
    :catch_3
    move-exception v0

    .line 1884
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v1, "CORE"

    const-string v2, " parsing protobuf msg exception"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    const-string v1, "RECV"

    invoke-static {p1, p2, v1}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 1892
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_0
    nop

    .line 1893
    :goto_1
    return-void
.end method

.method private processSolicited(Lcom/quicinc/cne/Native$CneMessage;)V
    .locals 8
    .param p1, "rsp"    # Lcom/quicinc/cne/Native$CneMessage;

    .line 1910
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$CneMessage;->getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    .line 1912
    .local v0, "body":Lcom/google/protobuf/micro/ByteStringMicro;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/quicinc/cne/Native$SolictedMsg;->parseFrom([B)Lcom/quicinc/cne/Native$SolictedMsg;

    move-result-object v1

    .line 1913
    .local v1, "solmsg":Lcom/quicinc/cne/Native$SolictedMsg;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$SolictedMsg;->getSerial()I

    move-result v2

    .line 1914
    .local v2, "serial":I
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$SolictedMsg;->getError()I

    move-result v3

    .line 1915
    .local v3, "error":I
    const-string v4, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse solicted message, serial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$SolictedMsg;->getSerial()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/quicinc/cne/CNE;->findAndRemoveRequestFromList(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v4

    .line 1919
    .local v4, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v4, :cond_0

    .line 1920
    const-string v5, "CORE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected solicited response! sn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    return-void

    .line 1924
    :cond_0
    if-eqz v3, :cond_1

    .line 1925
    invoke-virtual {v4, v3}, Lcom/quicinc/cne/CNERequest;->onError(I)V

    .line 1926
    invoke-virtual {v4}, Lcom/quicinc/cne/CNERequest;->release()V

    .line 1927
    return-void

    .line 1929
    :cond_1
    invoke-virtual {v4}, Lcom/quicinc/cne/CNERequest;->release()V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1933
    .end local v1    # "solmsg":Lcom/quicinc/cne/Native$SolictedMsg;
    .end local v2    # "serial":I
    .end local v3    # "error":I
    .end local v4    # "rr":Lcom/quicinc/cne/CNERequest;
    goto :goto_0

    .line 1931
    :catch_0
    move-exception v1

    .line 1932
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "CORE"

    const-string v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    .end local v1    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_0
    return-void
.end method

.method private processUnsolicited(Lcom/quicinc/cne/Native$CneMessage;)V
    .locals 6
    .param p1, "rsp"    # Lcom/quicinc/cne/Native$CneMessage;

    .line 1937
    const-string v0, "CORE"

    const-string v1, "processUnsolicited called"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$CneMessage;->getMsgId()I

    move-result v0

    .line 1939
    .local v0, "response":I
    invoke-virtual {p1}, Lcom/quicinc/cne/Native$CneMessage;->getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    .line 1940
    .local v1, "body":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v2

    .line 1941
    .local v2, "data":[B
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2046
    :pswitch_0
    const-string v3, "CORE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNKOWN Unsolicited Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2041
    :pswitch_1
    const-string v3, "CORE"

    const-string v4, "CNE_REQUEST_QUOTA_LIMIT_QUERY received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->handleQuotaQuery()V

    .line 2043
    goto/16 :goto_0

    .line 2009
    :pswitch_2
    const-string v3, "CORE"

    const-string v4, "REQUEST_UPDATE_POLICY received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->handleRequestUpdatePolicy()V

    .line 2011
    goto/16 :goto_0

    .line 2003
    :pswitch_3
    const-string v3, "CORE"

    const-string v4, "NOTIFY_POLICY_UPDATE_DONE received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parsePolicyUpdateResp([B)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    move-result-object v3

    .line 2005
    .local v3, "p":Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->handlePolicyUpdateResponse(Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;)V

    goto/16 :goto_0

    .line 1997
    .end local v3    # "p":Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    :pswitch_4
    const-string v3, "CORE"

    const-string v4, "RESP_SET_FEATURE_PREF received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseFeatureResp([B)Lcom/quicinc/cne/Native$FeatureRespMsg;

    move-result-object v3

    .line 1999
    .local v3, "p":Lcom/quicinc/cne/Native$FeatureRespMsg;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->handleFeatureStatusSetResponse(Lcom/quicinc/cne/Native$FeatureRespMsg;)V

    goto/16 :goto_0

    .line 1991
    .end local v3    # "p":Lcom/quicinc/cne/Native$FeatureRespMsg;
    :pswitch_5
    const-string v3, "CORE"

    const-string v4, "NOTIFY_FEATURE_STATUS received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseFeatureInfo([B)Lcom/quicinc/cne/Native$FeatureInfo;

    move-result-object v3

    .line 1993
    .local v3, "p":Lcom/quicinc/cne/Native$FeatureInfo;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->handleFeatureStatusNotification(Lcom/quicinc/cne/Native$FeatureInfo;)V

    goto/16 :goto_0

    .line 1985
    .end local v3    # "p":Lcom/quicinc/cne/Native$FeatureInfo;
    :pswitch_6
    const-string v3, "CORE"

    const-string v4, "REQUEST_POST_BQE_RESULTS received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseBqePostParam([B)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    move-result-object v3

    .line 1987
    .local v3, "p":Lcom/quicinc/cne/Native$BqePostParamsMsg;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->handlePostBqeResult(Lcom/quicinc/cne/Native$BqePostParamsMsg;)V

    goto/16 :goto_0

    .line 1968
    .end local v3    # "p":Lcom/quicinc/cne/Native$BqePostParamsMsg;
    :pswitch_7
    const-string v3, "CORE"

    const-string v4, "CNE_REQUEST_STOP_ACTIVE_BQE received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->handleStopActiveBQEMsg()V

    .line 1970
    goto/16 :goto_0

    .line 1979
    :pswitch_8
    const-string v3, "CORE"

    const-string v4, "REQUEST_START_ICD received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseIcdStartMsg([B)Lcom/quicinc/cne/Native$IcdStartMsg;

    move-result-object v3

    .line 1981
    .local v3, "p":Lcom/quicinc/cne/Native$IcdStartMsg;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->handleStartICDMsg(Lcom/quicinc/cne/Native$IcdStartMsg;)V

    goto/16 :goto_0

    .line 1973
    .end local v3    # "p":Lcom/quicinc/cne/Native$IcdStartMsg;
    :pswitch_9
    const-string v3, "CORE"

    const-string v4, "REQUEST_SET_DEFAULT_ROUTE received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseDefaultRoute([B)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    move-result-object v3

    .line 1975
    .local v3, "p":Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->handleSetDefaultRouteMsg(Lcom/quicinc/cne/Native$SetDefaultRouteMsg;)V

    goto/16 :goto_0

    .line 1962
    .end local v3    # "p":Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    :pswitch_a
    const-string v3, "CORE"

    const-string v4, "REQUEST_START_ACTIVE_BQE received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseBqeActiveProbe([B)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    move-result-object v3

    .line 1964
    .local v3, "p":Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->handleStartActiveBQEMsg(Lcom/quicinc/cne/Native$BqeActiveProbeMsg;)V

    goto/16 :goto_0

    .line 1956
    .end local v3    # "p":Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    :pswitch_b
    const-string v3, "CORE"

    const-string v4, "NOTIFY_DISALLOWED_AP received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseDisallowedAP([B)Lcom/quicinc/cne/Native$DisallowedAP;

    move-result-object v3

    .line 1958
    .local v3, "p":Lcom/quicinc/cne/Native$DisallowedAP;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->handleDisallowedApMsg(Lcom/quicinc/cne/Native$DisallowedAP;)V

    goto :goto_0

    .line 2020
    .end local v3    # "p":Lcom/quicinc/cne/Native$DisallowedAP;
    :pswitch_c
    const-string v3, "CORE"

    const-string v4, "REQUEST_STOP_NAT_KEEP_ALIVE received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    invoke-direct {p0}, Lcom/quicinc/cne/CNE;->handleStopNatKeepAliveMsg()V

    .line 2022
    goto :goto_0

    .line 2014
    :pswitch_d
    const-string v3, "CORE"

    const-string v4, "REQUEST_START_NAT_KEEP_ALIVE received"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseNatKA([B)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    move-result-object v3

    .line 2016
    .local v3, "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->handleStartNatKeepAliveMsg(Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;)V

    goto :goto_0

    .line 2033
    .end local v3    # "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    :pswitch_e
    const-string v3, "CORE"

    const-string v5, "REQUEST_STOP_RSSI_OFFLOAD received"

    invoke-static {v3, v5}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseRssiOffload([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    move-result-object v3

    .line 2035
    .local v3, "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    if-eqz v3, :cond_0

    .line 2036
    invoke-direct {p0, v4, v3}, Lcom/quicinc/cne/CNE;->handleRssiOffloadRequest(ILcom/quicinc/cne/Native$RssiOffloadMsg;)V

    goto :goto_0

    .line 2025
    .end local v3    # "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    :pswitch_f
    const-string v4, "CORE"

    const-string v5, "REQUEST_START_RSSI_OFFLOAD received"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseRssiOffload([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    move-result-object v4

    .line 2027
    .local v4, "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    if-eqz v4, :cond_0

    .line 2028
    invoke-direct {p0, v3, v4}, Lcom/quicinc/cne/CNE;->handleRssiOffloadRequest(ILcom/quicinc/cne/Native$RssiOffloadMsg;)V

    goto :goto_0

    .line 1950
    .end local v4    # "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    :pswitch_10
    const-string v4, "CORE"

    const-string v5, "REQUEST_BRING_RAT_UP received"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseRatRequest([B)Lcom/quicinc/cne/Native$RatRequest;

    move-result-object v4

    .line 1952
    .local v4, "p":Lcom/quicinc/cne/Native$RatRequest;
    if-eqz v4, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/quicinc/cne/CNE;->handleRatRequest(ZLcom/quicinc/cne/Native$RatRequest;)V

    goto :goto_0

    .line 1944
    .end local v4    # "p":Lcom/quicinc/cne/Native$RatRequest;
    :pswitch_11
    const-string v3, "CORE"

    const-string v5, "REQUEST_BRING_RAT_DOWN received"

    invoke-static {v3, v5}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    invoke-static {v2}, Lcom/quicinc/cne/ProtoMsgParser;->parseRatRequest([B)Lcom/quicinc/cne/Native$RatRequest;

    move-result-object v3

    .line 1946
    .local v3, "p":Lcom/quicinc/cne/Native$RatRequest;
    if-eqz v3, :cond_0

    invoke-direct {p0, v4, v3}, Lcom/quicinc/cne/CNE;->handleRatRequest(ZLcom/quicinc/cne/Native$RatRequest;)V

    .line 2050
    .end local v3    # "p":Lcom/quicinc/cne/Native$RatRequest;
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static readCneMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1252
    const/4 v0, 0x0

    .line 1253
    .local v0, "offset":I
    const/4 v1, 0x4

    .line 1255
    .local v1, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 1257
    .local v2, "countRead":I
    const/4 v3, -0x1

    if-gez v2, :cond_1

    .line 1258
    const-string v4, "CORE"

    const-string v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    return v3

    .line 1262
    :cond_1
    add-int/2addr v0, v2

    .line 1263
    sub-int/2addr v1, v2

    .line 1264
    if-gtz v1, :cond_0

    .line 1266
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 1271
    .local v4, "messageLength":I
    const/4 v0, 0x0

    .line 1272
    move v1, v4

    .line 1274
    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 1276
    if-gez v2, :cond_3

    .line 1277
    const-string v5, "CORE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    return v3

    .line 1282
    :cond_3
    add-int/2addr v0, v2

    .line 1283
    sub-int/2addr v1, v2

    .line 1284
    if-gtz v1, :cond_2

    .line 1286
    return v4
.end method

.method private readProfile(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .param p1, "operatorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/quicinc/cne/CNE$CMProfile;",
            ">;"
        }
    .end annotation

    .line 2054
    const/4 v0, 0x0

    .line 2055
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2056
    .local v1, "profileMapTmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/quicinc/cne/CNE$CMProfile;>;"
    const/4 v2, 0x0

    .line 2059
    .local v2, "isOverrideSet":I
    :try_start_0
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ims_profile_override"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 2063
    goto :goto_0

    .line 2061
    :catch_0
    move-exception v3

    .line 2065
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2066
    const-string v3, "CORE"

    const-string v4, "Global override has been set, reading the override profile file:/data/connectivity/profiles_override/profiles.xml"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v0, "/data/connectivity/profiles_override/profiles.xml"

    goto :goto_1

    .line 2070
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/etc/cne/Nexus/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_profiles.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2071
    const-string v3, "CORE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2075
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2080
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2086
    invoke-static {p0, v0}, Lcom/quicinc/cne/CMProfileParser;->parseFile(Lcom/quicinc/cne/CNE;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2088
    return-object v1

    .line 2081
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not a regular file. Cannot proceed further!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2082
    .local v4, "errorStr":Ljava/lang/String;
    const-string v5, "CORE"

    invoke-static {v5, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2076
    .end local v4    # "errorStr":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not exist. Cannot proceed further!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2077
    .restart local v4    # "errorStr":Ljava/lang/String;
    const-string v5, "CORE"

    invoke-static {v5, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private registerMobileDataObserver()V
    .locals 4

    .line 2437
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    .line 2438
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mMobileDataCO:Landroid/database/ContentObserver;

    .line 2437
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2440
    return-void
.end method

.method public static registerRequestHandler(ILandroid/os/Handler;)V
    .locals 3
    .param p0, "request"    # I
    .param p1, "handler"    # Landroid/os/Handler;

    .line 1858
    sget-object v0, Lcom/quicinc/cne/CNE;->mRequestHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1859
    :try_start_0
    sget-object v1, Lcom/quicinc/cne/CNE;->mRequestHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1860
    const-string v1, "CORE"

    const-string v2, "Handler already registered overriding with new handler."

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :cond_0
    sget-object v1, Lcom/quicinc/cne/CNE;->mRequestHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    monitor-exit v0

    .line 1864
    return-void

    .line 1863
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestFeatureSettings(I)Z
    .locals 3
    .param p1, "featureId"    # I

    .line 1522
    invoke-static {p1}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestFeatureSettings(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 1523
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 1524
    const-string v1, "CORE"

    const-string v2, "requestFeatureSettings: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const/4 v1, 0x0

    return v1

    .line 1527
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 1528
    const/4 v1, 0x1

    return v1
.end method

.method private requestFeatureSettingsChange(II)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "newValue"    # I

    .line 1512
    invoke-static {p1, p2}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestFeature(II)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 1513
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 1514
    const-string v1, "CORE"

    const-string v2, "requestFeatureSettingsChange: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const/4 v1, 0x0

    return v1

    .line 1517
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 1518
    const/4 v1, 0x1

    return v1
.end method

.method private requestFeaturesSettings()V
    .locals 1

    .line 1507
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE;->requestFeatureSettings(I)Z

    .line 1508
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE;->requestFeatureSettings(I)Z

    .line 1509
    return-void
.end method

.method private static rlog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3418
    invoke-static {p0, p1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    return-void
.end method

.method private sendDefaultNwMsg(I)Z
    .locals 4
    .param p1, "defNw"    # I

    .line 2371
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-lt p1, v1, :cond_2

    const/16 v1, 0x11

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 2377
    :cond_0
    invoke-static {p1}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestDfNw(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v1

    .line 2378
    .local v1, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v1, :cond_1

    .line 2379
    const-string v2, "CORE"

    const-string v3, "sendDefaultNwMsg: rr=NULL - not updated"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    return v0

    .line 2382
    :cond_1
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2383
    const/4 v0, 0x1

    return v0

    .line 2373
    .end local v1    # "rr":Lcom/quicinc/cne/CNERequest;
    :cond_2
    :goto_0
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDefaultNwMsg: Default network msg not being sent to CND.Value out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    return v0
.end method

.method private sendInitReq()Z
    .locals 3

    .line 2571
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgParser;->createInitRequest()Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2572
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2573
    const-string v1, "CORE"

    const-string v2, "sendinitReq: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    const/4 v1, 0x0

    return v1

    .line 2576
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2577
    const/4 v1, 0x1

    return v1
.end method

.method private declared-synchronized sendPrefChangedBroadcast(III)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "featureParameter"    # I
    .param p3, "value"    # I

    monitor-enter p0

    .line 3369
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.quicinc.cne.CNE_PREFERENCE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3370
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cneFeatureId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3371
    const-string v1, "cneFeatureParameter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3372
    const-string v1, "cneParameterValue"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3375
    :try_start_1
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BROADCAST_STICKY"

    const-string v3, "CNE sendPrefChangedBroadcast()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3380
    goto :goto_0

    .line 3378
    :catch_0
    move-exception v1

    .line 3379
    .local v1, "se":Ljava/lang/SecurityException;
    :try_start_2
    const-string v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPrefChangedBroadcast() SecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3381
    .end local v1    # "se":Ljava/lang/SecurityException;
    :goto_0
    monitor-exit p0

    return-void

    .line 3368
    .end local v0    # "intent":Landroid/content/Intent;
    .end local p1    # "featureId":I
    .end local p2    # "featureParameter":I
    .end local p3    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/quicinc/cne/CNE;
    throw p1
.end method

.method private sendQuotaInfo(Z)V
    .locals 3
    .param p1, "isReached"    # Z

    .line 1086
    invoke-static {p1}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestQuotaInfo(Z)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 1087
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 1088
    const-string v1, "CORE"

    const-string v2, "sendQuotaReached: rr = NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    return-void

    .line 1091
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 1092
    return-void
.end method

.method private sendScreenState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 2562
    invoke-static {p1}, Lcom/quicinc/cne/ProtoMsgParser;->createScreenRequest(Z)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2563
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2564
    const-string v1, "CORE"

    const-string v2, "sendScreenState: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    return-void

    .line 2567
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2568
    return-void
.end method

.method private sendWifiApInfo(II)V
    .locals 3
    .param p1, "currState"    # I
    .param p2, "prevState"    # I

    .line 2508
    invoke-static {p1, p2}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestWifiAp(II)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2509
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2510
    const-string v1, "CORE"

    const-string v2, "sendWifiApInfo: rr = NULL - no update"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    return-void

    .line 2513
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2514
    return-void
.end method

.method private sendWifiP2pInfo(I)V
    .locals 3
    .param p1, "currState"    # I

    .line 2517
    invoke-static {p1}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestWifiP2p(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2518
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2519
    const-string v1, "CORE"

    const-string v2, "sendWifiP2pInfo: rr = NULL - no update"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    return-void

    .line 2522
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2523
    return-void
.end method

.method private sendWifiStatus()V
    .locals 4

    .line 2526
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    if-eqz v0, :cond_1

    .line 2528
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    new-instance v1, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setTimeStamp(Ljava/lang/String;)V

    .line 2529
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->_cneWifiInfo:Lcom/quicinc/cne/CNE$CneWifiInfo;

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(Lcom/quicinc/cne/CNE$CneWifiInfo;)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2530
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2531
    const-string v1, "CORE"

    const-string v2, "updateWlanStatus: rr=NULL - no updated"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    return-void

    .line 2534
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "rr":Lcom/quicinc/cne/CNERequest;
    goto :goto_0

    .line 2535
    :catch_0
    move-exception v0

    .line 2536
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWifiStatus: null pointer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    goto :goto_1

    .line 2539
    :cond_1
    const-string v0, "CORE"

    const-string v1, "sendWlanStatus: null mWifiManager or CneWifiInfo"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    :goto_1
    return-void
.end method

.method private sendWwanStatus()V
    .locals 4

    .line 2544
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quicinc/cne/CNE;->_cneWwanInfo:Lcom/quicinc/cne/CNE$CneWwanInfo;

    if-eqz v0, :cond_1

    .line 2546
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->_cneWwanInfo:Lcom/quicinc/cne/CNE$CneWwanInfo;

    new-instance v1, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneWwanInfo;->setTimeStamp(Ljava/lang/String;)V

    .line 2547
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->_cneWwanInfo:Lcom/quicinc/cne/CNE$CneWwanInfo;

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(Lcom/quicinc/cne/CNE$CneWwanInfo;)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2548
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2549
    const-string v1, "CORE"

    const-string v2, "sendWwanStatus: rr=NULL - no updated"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "rr":Lcom/quicinc/cne/CNERequest;
    goto :goto_0

    .line 2552
    :catch_0
    move-exception v0

    .line 2553
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWwanStatus: null pointer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    goto :goto_1

    .line 2556
    :cond_1
    const-string v0, "CORE"

    const-string v1, "sendWwanStatus: null TelephonyManager or CneWwanInfo"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    :goto_1
    return-void
.end method

.method private setPolicyConfigUpdateBusy(IZ)V
    .locals 3
    .param p1, "policyType"    # I
    .param p2, "tryLater"    # Z

    .line 3126
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3128
    :cond_0
    monitor-enter p0

    .line 3129
    :try_start_0
    sput-boolean p2, Lcom/quicinc/cne/CNE;->isAndsfConfigUpdateBusy:Z

    .line 3130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3131
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAndsfConfigUpdateBusy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/quicinc/cne/CNE;->isAndsfConfigUpdateBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    nop

    .line 3137
    :goto_0
    return-void

    .line 3130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setQuotaReachedStatus()V
    .locals 12

    .line 1055
    const-string v0, "connectivity"

    .line 1056
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 1058
    .local v0, "mcm":Landroid/net/IConnectivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1059
    .local v5, "ns":Landroid/net/NetworkState;
    const-string v6, "CORE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v6, p0, Lcom/quicinc/cne/CNE;->mMobileNetwork:Landroid/net/Network;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    iget-object v7, p0, Lcom/quicinc/cne/CNE;->mMobileNetwork:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    if-ne v6, v7, :cond_1

    .line 1061
    const-string v6, "netpolicy"

    .line 1063
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1062
    invoke-static {v6}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v6

    .line 1064
    .local v6, "mpm":Landroid/net/INetworkPolicyManager;
    invoke-interface {v6, v5}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;

    move-result-object v7

    .line 1065
    .local v7, "nwQuotaInfo":Landroid/net/NetworkQuotaInfo;
    const-string v8, "CORE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QuotaInfo: estimated: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/NetworkQuotaInfo;->getEstimatedBytes()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " softLimit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v7}, Landroid/net/NetworkQuotaInfo;->getSoftLimitBytes()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " hardLimit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {v7}, Landroid/net/NetworkQuotaInfo;->getHardLimitBytes()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1065
    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v7}, Landroid/net/NetworkQuotaInfo;->getHardLimitBytes()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 1069
    invoke-virtual {v7}, Landroid/net/NetworkQuotaInfo;->getEstimatedBytes()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/net/NetworkQuotaInfo;->getHardLimitBytes()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 1070
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/quicinc/cne/CNE;->mIsQuotaReached:Z

    goto :goto_1

    .line 1073
    :cond_0
    iput-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIsQuotaReached:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    .end local v5    # "ns":Landroid/net/NetworkState;
    .end local v6    # "mpm":Landroid/net/INetworkPolicyManager;
    .end local v7    # "nwQuotaInfo":Landroid/net/NetworkQuotaInfo;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1081
    :catch_0
    move-exception v1

    .line 1082
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 1078
    :catch_1
    move-exception v1

    .line 1079
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Quota Info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_2
    nop

    .line 1084
    :goto_2
    return-void
.end method

.method private startNetworks()V
    .locals 3

    .line 1790
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1791
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1792
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1793
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE;->mWifiRequest:Landroid/net/NetworkRequest;

    .line 1794
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1795
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1796
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE;->mMobileRequest:Landroid/net/NetworkRequest;

    .line 1798
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    .line 1799
    sget-object v0, Lcom/quicinc/cne/CNE$FeatureType;->WQE:Lcom/quicinc/cne/CNE$FeatureType;

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE;->checkFeatureEnabled(Lcom/quicinc/cne/CNE$FeatureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    iget-boolean v1, p0, Lcom/quicinc/cne/CNE;->mLastWQEFeatureEnabled:Z

    if-eq v0, v1, :cond_0

    .line 1800
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->mLastWQEFeatureEnabled:Z

    .line 1812
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mWifiRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mWifiRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1818
    :goto_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mMobileRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1819
    return-void
.end method

.method private stopNetworks()V
    .locals 2

    .line 1822
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->mLastWQEFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 1823
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    iput-boolean v0, p0, Lcom/quicinc/cne/CNE;->mLastWQEFeatureEnabled:Z

    .line 1824
    const-string v0, "CORE"

    const-string v1, "Unregister the network callbacks"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1826
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1828
    :cond_0
    return-void
.end method

.method private updateDefaultNetwork()Z
    .locals 4

    .line 2389
    const/4 v0, -0x1

    .line 2390
    .local v0, "defaultNw":I
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 2391
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2392
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2393
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2394
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 2397
    :cond_0
    iget v3, p0, Lcom/quicinc/cne/CNE;->mDefaultNetwork:I

    if-eq v0, v3, :cond_1

    .line 2398
    iput v0, p0, Lcom/quicinc/cne/CNE;->mDefaultNetwork:I

    .line 2399
    iget v3, p0, Lcom/quicinc/cne/CNE;->mDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->sendDefaultNwMsg(I)Z

    move-result v3

    return v3

    .line 2401
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1625
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2

    .line 1627
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 1628
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 1630
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setDnsServers(Ljava/util/Collection;)V

    .line 1631
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1632
    .local v1, "route":Landroid/net/RouteInfo;
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1633
    .end local v1    # "route":Landroid/net/RouteInfo;
    goto :goto_0

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1636
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1637
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 1638
    .local v1, "lp":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 1639
    .end local v1    # "lp":Landroid/net/LinkProperties;
    goto :goto_1

    .line 1640
    :cond_1
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curLp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/quicinc/cne/CNE;->curLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :cond_2
    return-void
.end method

.method private updateMobileDataState(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2443
    const/4 v0, 0x0

    .line 2444
    .local v0, "dburi":Landroid/net/Uri;
    const/4 v1, 0x1

    .line 2445
    .local v1, "enabled":Z
    const/4 v2, 0x0

    .line 2446
    .local v2, "phoneSubId":I
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2447
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_2

    .line 2449
    :try_start_0
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2453
    .local v4, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 2456
    .end local v4    # "it":Lcom/android/internal/telephony/ITelephony;
    nop

    .line 2462
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2463
    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2465
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2469
    :goto_0
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2471
    invoke-direct {p0, v1}, Lcom/quicinc/cne/CNE;->notifyMobileDataEnabled(Z)V

    .line 2473
    :cond_1
    return-void

    .line 2454
    :catch_0
    move-exception v4

    .line 2455
    .local v4, "e":Landroid/os/RemoteException;
    return-void

    .line 2458
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v4, "CORE"

    const-string v5, "Cannot get servicemanager, not updating mobile data state"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    return-void
.end method

.method private updateOperatorPolicy(Ljava/lang/String;)I
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 3098
    const/4 v0, -0x1

    .line 3100
    .local v0, "retVal":I
    sget-boolean v1, Lcom/quicinc/cne/CNE;->isAndsfConfigUpdateBusy:Z

    if-nez v1, :cond_3

    .line 3101
    const-string v1, "CORE"

    const-string v2, "Updating Operator Policy"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->andsfParser:Lcom/quicinc/cne/andsf/AndsfParser;

    if-nez v1, :cond_0

    .line 3103
    const-string v1, "CORE"

    const-string v2, "andsfParser object is null"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    const/4 v1, -0x1

    return v1

    .line 3107
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v1}, Lcom/quicinc/cne/CNE;->setPolicyConfigUpdateBusy(IZ)V

    .line 3108
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->andsfParser:Lcom/quicinc/cne/andsf/AndsfParser;

    invoke-virtual {v2, p1}, Lcom/quicinc/cne/andsf/AndsfParser;->updateAndsf(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    .line 3109
    const-string v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsing xml file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3113
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE;->andsfDataReady()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3114
    const/4 v0, -0x1

    .line 3115
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/quicinc/cne/CNE;->setPolicyConfigUpdateBusy(IZ)V

    .line 3121
    :cond_2
    return v0

    .line 3118
    :cond_3
    const-string v1, "CORE"

    const-string v2, "Previous request in process try later..."

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    const/4 v1, -0x2

    return v1
.end method

.method private updateWqeStateChange(I)V
    .locals 4
    .param p1, "ratType"    # I

    .line 2721
    const/4 v0, 0x0

    .line 2722
    .local v0, "state":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v0, v3

    .line 2724
    if-ne v0, v2, :cond_1

    iget-boolean v3, p0, Lcom/quicinc/cne/CNE;->isWifiConnected:Z

    if-nez v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    .line 2725
    :cond_2
    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE;->broadcastWqeStateChange(I)V

    .line 2726
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mIPFamilyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2727
    :try_start_0
    iput-boolean v1, p0, Lcom/quicinc/cne/CNE;->sendDefaultRouteIntent:Z

    .line 2728
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2730
    :cond_3
    const-string v1, "CORE"

    const-string v3, "Not sending wqe state yet since wifi not available"

    invoke-static {v1, v3}, Lcom/quicinc/cne/CNE;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mIPFamilyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2732
    :try_start_1
    iput-boolean v2, p0, Lcom/quicinc/cne/CNE;->sendDefaultRouteIntent:Z

    .line 2733
    monitor-exit v1

    .line 2736
    :goto_1
    return-void

    .line 2733
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method


# virtual methods
.method public andsfDataReady()Z
    .locals 3

    .line 2360
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestAndsf()Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2361
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2362
    const-string v1, "CORE"

    const-string v2, "andsfDataReady: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const/4 v1, 0x0

    return v1

    .line 2365
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2366
    const/4 v1, 0x1

    return v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2941
    const-string v0, "Cneservice dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mNetworkCallbackTracker:Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;

    invoke-virtual {v0, p2}, Lcom/quicinc/cne/CNE$CMNetworkCallbackTracker;->dump(Ljava/io/PrintWriter;)V

    .line 2943
    return-void
.end method

.method public frequencyBandChanged(Lcom/quicinc/cne/CNE$FreqBand;)V
    .locals 3
    .param p1, "newFreqBand"    # Lcom/quicinc/cne/CNE$FreqBand;

    .line 481
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->profileTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 484
    .local v1, "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/quicinc/cne/CMProfileTracker;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/quicinc/cne/CMProfileTracker;

    invoke-virtual {v2}, Lcom/quicinc/cne/CMProfileTracker;->restart()V

    .line 485
    .end local v1    # "mMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/quicinc/cne/CMProfileTracker;>;"
    goto :goto_0

    .line 487
    :cond_0
    return-void
.end method

.method public getIWLANEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3309
    const/4 v0, 0x0

    .line 3310
    .local v0, "exempt":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3311
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 3312
    const/4 v0, 0x1

    goto :goto_0

    .line 3315
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3316
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3317
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move v3, v5

    nop

    :cond_1
    move v0, v3

    .line 3320
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3322
    :goto_0
    if-eqz v0, :cond_2

    .line 3325
    const-string v2, "CORE"

    const-string v3, "getIWLANEnabled()"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    monitor-enter p0

    .line 3327
    :try_start_1
    iget-boolean v2, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureEnabled:Z

    monitor-exit p0

    return v2

    .line 3328
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3323
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "package is not system app"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3318
    :catch_0
    move-exception v2

    .line 3319
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to find info of the calling package"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getNSRMEnabled(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3423
    const/4 v0, -0x4

    return v0
.end method

.method public getPolicyVersion(ILjava/lang/String;)I
    .locals 6
    .param p1, "policyType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3195
    const/4 v0, 0x0

    .line 3196
    .local v0, "exempt":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3197
    .local v1, "uid":I
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    .line 3198
    const/4 v0, 0x1

    goto :goto_0

    .line 3201
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3202
    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3203
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    move v4, v2

    nop

    :cond_1
    move v0, v4

    .line 3206
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3208
    :goto_0
    if-eqz v0, :cond_4

    .line 3211
    if-eq p1, v2, :cond_2

    .line 3219
    const-string v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid PolicyType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " passed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    const/4 v2, -0x3

    return v2

    .line 3213
    :cond_2
    sget-object v2, Lcom/quicinc/cne/CNE$FeatureType;->WQE:Lcom/quicinc/cne/CNE$FeatureType;

    invoke-direct {p0, v2}, Lcom/quicinc/cne/CNE;->checkFeatureEnabled(Lcom/quicinc/cne/CNE$FeatureType;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3214
    const/4 v2, -0x4

    return v2

    .line 3216
    :cond_3
    invoke-static {}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->getInt()I

    move-result v2

    return v2

    .line 3209
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "package is not system app"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3204
    :catch_0
    move-exception v2

    .line 3205
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to find info of the calling package"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getWQEEnabled(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3241
    const/4 v0, 0x0

    .line 3242
    .local v0, "exempt":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3243
    .local v1, "uid":I
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    .line 3244
    const/4 v0, 0x1

    goto :goto_0

    .line 3247
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3248
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3249
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    move v4, v2

    nop

    :cond_1
    move v0, v4

    .line 3252
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3254
    :goto_0
    if-eqz v0, :cond_4

    .line 3257
    const-string v3, "CORE"

    const-string v4, "getWQEEnabled()"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    monitor-enter p0

    .line 3259
    :try_start_1
    sget-object v3, Lcom/quicinc/cne/CNE$FeatureType;->WQE:Lcom/quicinc/cne/CNE$FeatureType;

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->checkFeatureEnabled(Lcom/quicinc/cne/CNE$FeatureType;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3260
    const/4 v2, -0x4

    monitor-exit p0

    return v2

    .line 3262
    :cond_2
    iget-boolean v3, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureEnabled:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    nop

    :cond_3
    monitor-exit p0

    return v2

    .line 3263
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3255
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "package is not system app"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3250
    :catch_0
    move-exception v2

    .line 3251
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to find info of the calling package"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public notifyRatConnectStatus(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipV4Addr"    # Ljava/lang/String;
    .param p4, "ipV6Addr"    # Ljava/lang/String;

    .line 2407
    invoke-static {p1, p2, p3, p4}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(IILjava/lang/String;Ljava/lang/String;)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2408
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2409
    const-string v1, "CORE"

    const-string v2, "notifyRatConnectStatus: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    const/4 v1, 0x0

    return v1

    .line 2412
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2413
    const/4 v1, 0x1

    return v1
.end method

.method public notifyWlanConnectivityUp(ZIZ)Z
    .locals 3
    .param p1, "isConnected"    # Z
    .param p2, "familyType"    # I
    .param p3, "isAndroidValidated"    # Z

    .line 2495
    if-eqz p1, :cond_1

    .line 2496
    invoke-static {p2, p3}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(IZ)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2497
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2498
    const-string v1, "CORE"

    const-string v2, "notifyWlanConnectivityUp: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const/4 v1, 0x0

    return v1

    .line 2501
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2502
    iput p2, p0, Lcom/quicinc/cne/CNE;->lastFamilyType:I

    .line 2504
    .end local v0    # "rr":Lcom/quicinc/cne/CNERequest;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized send(Lcom/quicinc/cne/CNERequest;)V
    .locals 4
    .param p1, "rr"    # Lcom/quicinc/cne/CNERequest;

    monitor-enter p0

    .line 1848
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE;->mSender:Lcom/quicinc/cne/CNE$CNESender;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/quicinc/cne/CNE$CNESender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1850
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1854
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 1847
    .end local p1    # "rr":Lcom/quicinc/cne/CNERequest;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1852
    .restart local p1    # "rr":Lcom/quicinc/cne/CNERequest;
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "npe":Ljava/lang/NullPointerException;
    :try_start_1
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send CNERequest null pointer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1855
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    monitor-exit p0

    return-void

    .line 1847
    .end local p1    # "rr":Lcom/quicinc/cne/CNERequest;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/quicinc/cne/CNE;
    throw p1
.end method

.method public sendBQEResponse(I)V
    .locals 0
    .param p1, "result"    # I

    .line 3012
    return-void
.end method

.method public sendBQEResponse(IIII)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "rtt"    # I
    .param p3, "tSec"    # I
    .param p4, "tMs"    # I

    .line 2993
    invoke-static {p1, p2, p3, p4}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(IIII)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2994
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2995
    const-string v1, "CORE"

    const-string v2, "notifyJRTTResult: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    return-void

    .line 2998
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2999
    return-void
.end method

.method public sendICDResponse(ILjava/lang/String;IIIIIIIII)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "tid"    # I
    .param p5, "icdQuota"    # I
    .param p6, "icdProb"    # I
    .param p7, "bqeQuota"    # I
    .param p8, "bqeProb"    # I
    .param p9, "mbw"    # I
    .param p10, "dl"    # I
    .param p11, "sdev"    # I

    .line 2982
    invoke-static/range {p1 .. p11}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(ILjava/lang/String;IIIIIIIII)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2984
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2985
    const-string v1, "CORE"

    const-string v2, "notifyICDResult: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    return-void

    .line 2988
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2989
    return-void
.end method

.method public sendIcdHttpResponse(ILjava/lang/String;II)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "tid"    # I
    .param p4, "family"    # I

    .line 2969
    invoke-static {p1, p2, p3, p4}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(ILjava/lang/String;II)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2970
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2971
    const-string v1, "CORE"

    const-string v2, "notifyIcdHttpResult: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    return-void

    .line 2974
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2975
    return-void
.end method

.method public sendRatInfo(Lcom/quicinc/cne/CNE$CneRatInfo;I)V
    .locals 3
    .param p1, "info"    # Lcom/quicinc/cne/CNE$CneRatInfo;
    .param p2, "netType"    # I

    .line 2946
    const-string v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRatInfo: network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    invoke-static {p1, p2}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(Lcom/quicinc/cne/CNE$CneRatInfo;I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 2948
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 2949
    const-string v1, "CORE"

    const-string v2, "sendRatInfo: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    return-void

    .line 2952
    :cond_0
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2953
    return-void
.end method

.method public sendWlanStatusforProfile(Ljava/lang/String;II)V
    .locals 4
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "reasonCode"    # I

    .line 2957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/quicinc/cne/CNE;->mProfileIDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2958
    .local v0, "profileID":Ljava/lang/String;
    const-string v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Wlan status for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    invoke-static {v0, p2, p3}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(Ljava/lang/String;II)Lcom/quicinc/cne/CNERequest;

    move-result-object v1

    .line 2960
    .local v1, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v1, :cond_0

    .line 2961
    const-string v2, "CORE"

    const-string v3, "sendWlanStatusforProfile: rr = NULL"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    return-void

    .line 2964
    :cond_0
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 2965
    return-void
.end method

.method public setIWLANEnabled(ZLjava/lang/String;)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3333
    const/4 v0, 0x0

    .line 3334
    .local v0, "exempt":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3335
    .local v1, "uid":I
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    .line 3336
    const/4 v0, 0x1

    goto :goto_0

    .line 3339
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3340
    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3341
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    move v4, v2

    nop

    :cond_1
    move v0, v4

    .line 3344
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3346
    :goto_0
    if-eqz v0, :cond_4

    .line 3349
    const-string v3, "CORE"

    const-string v4, "setIWLANEnabled()"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    monitor-enter p0

    .line 3351
    :try_start_1
    iget-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureRequestedState:Z

    if-eq v3, p1, :cond_3

    .line 3352
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureRequestedState:Z

    .line 3357
    iget-boolean v3, p0, Lcom/quicinc/cne/CNE;->mIWLANFeatureRequestedState:Z

    if-eqz v3, :cond_2

    .line 3358
    const/4 v2, 0x2

    .local v2, "state":I
    goto :goto_1

    .line 3360
    .end local v2    # "state":I
    :cond_2
    nop

    .line 3363
    .restart local v2    # "state":I
    :goto_1
    const/4 v3, 0x2

    invoke-direct {p0, v3, v2}, Lcom/quicinc/cne/CNE;->requestFeatureSettingsChange(II)Z

    .line 3364
    .end local v2    # "state":I
    monitor-exit p0

    .line 3365
    return-void

    .line 3354
    :cond_3
    monitor-exit p0

    return-void

    .line 3364
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3347
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "package is not system app"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3342
    :catch_0
    move-exception v2

    .line 3343
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to find info of the calling package"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setNSRMEnabled(ILjava/lang/String;)I
    .locals 1
    .param p1, "nsrmSetType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3428
    const/4 v0, -0x4

    return v0
.end method

.method public setWQEEnabled(ZLjava/lang/String;)I
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3268
    const/4 v0, 0x0

    .line 3269
    .local v0, "exempt":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3270
    .local v1, "uid":I
    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 3271
    const/4 v0, 0x1

    goto :goto_0

    .line 3274
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3275
    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 3276
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v6, v3

    if-eqz v6, :cond_1

    move v5, v3

    nop

    :cond_1
    move v0, v5

    .line 3279
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3281
    :goto_0
    if-eqz v0, :cond_5

    .line 3284
    const-string v4, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWQEEnabled() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    monitor-enter p0

    .line 3286
    :try_start_1
    sget-object v4, Lcom/quicinc/cne/CNE$FeatureType;->WQE:Lcom/quicinc/cne/CNE$FeatureType;

    invoke-direct {p0, v4}, Lcom/quicinc/cne/CNE;->checkFeatureEnabled(Lcom/quicinc/cne/CNE$FeatureType;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3287
    const/4 v2, -0x4

    monitor-exit p0

    return v2

    .line 3289
    :cond_2
    iget-boolean v4, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureRequestedState:Z

    if-eq v4, p1, :cond_4

    .line 3290
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureRequestedState:Z

    .line 3296
    iget-boolean v4, p0, Lcom/quicinc/cne/CNE;->mWQEFeatureRequestedState:Z

    if-eqz v4, :cond_3

    .line 3297
    const/4 v4, 0x2

    .local v4, "state":I
    goto :goto_1

    .line 3299
    .end local v4    # "state":I
    :cond_3
    move v4, v3

    .line 3302
    .restart local v4    # "state":I
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/quicinc/cne/CNE;->requestFeatureSettingsChange(II)Z

    .line 3303
    monitor-exit p0

    return v2

    .line 3292
    .end local v4    # "state":I
    :cond_4
    monitor-exit p0

    return v2

    .line 3304
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3282
    :cond_5
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "package is not system app"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3277
    :catch_0
    move-exception v2

    .line 3278
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to find info of the calling package"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updatePolicy(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "policyType"    # I
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3142
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    .line 3143
    const-string v0, "CORE"

    const-string v1, "Path length too long"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->dloge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    const/4 v0, -0x7

    return v0

    .line 3147
    :cond_0
    const/4 v0, 0x0

    .line 3148
    .local v0, "exempt":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3149
    .local v1, "uid":I
    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 3150
    const/4 v0, 0x1

    goto :goto_0

    .line 3153
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/quicinc/cne/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3154
    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 3155
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    move v5, v3

    nop

    :cond_2
    move v0, v5

    .line 3158
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3160
    :goto_0
    if-eqz v0, :cond_8

    .line 3164
    const-string v4, "/system/etc/cne/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "/data/connectivity/"

    .line 3165
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    if-le v1, v2, :cond_4

    .line 3166
    const-string v2, "CORE"

    const-string v3, "This path is not allowed to access"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->dloge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    const/4 v2, -0x6

    return v2

    .line 3170
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3172
    .local v2, "file":Ljava/io/File;
    if-eq p1, v3, :cond_5

    .line 3187
    const-string v3, "CORE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid PolicyType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " passed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    const/4 v3, -0x3

    return v3

    .line 3175
    :cond_5
    sget-object v3, Lcom/quicinc/cne/CNE$FeatureType;->WQE:Lcom/quicinc/cne/CNE$FeatureType;

    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE;->checkFeatureEnabled(Lcom/quicinc/cne/CNE$FeatureType;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3176
    const/4 v3, -0x4

    return v3

    .line 3179
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x19000

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 3180
    const-string v3, "CORE"

    const-string v4, "File size not supported"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNE;->dloge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    const/4 v3, -0x5

    return v3

    .line 3184
    :cond_7
    invoke-direct {p0, p2}, Lcom/quicinc/cne/CNE;->updateOperatorPolicy(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 3161
    .end local v2    # "file":Ljava/io/File;
    :cond_8
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "package is not system app"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3156
    :catch_0
    move-exception v2

    .line 3157
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to find info of the calling package"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
