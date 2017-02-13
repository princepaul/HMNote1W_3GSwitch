.class public Lcom/android/phone/CallModeler;
.super Landroid/os/Handler;
.source "CallModeler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallModeler$1;,
        Lcom/android/phone/CallModeler$CallResult;,
        Lcom/android/phone/CallModeler$Listener;
    }
.end annotation


# static fields
.field private static final CALL_ID_START_VALUE:I = 0x1

.field private static final DBG:Z

.field private static final PHONE_ID_BASE:I

.field private static final TAG:Ljava/lang/String;

.field private static mLastForegroundConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/android/internal/telephony/Connection$DisconnectCause;",
            "Lcom/android/services/telephony/common/Call$DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

.field private mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

.field private mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

.field private final mConfCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallModeler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mNextPhoneId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPhoneIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppMessageManager:Lcom/mediatek/phone/SuppMessageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    const-class v2, Lcom/android/phone/CallModeler;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    .line 108
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallModeler;->DBG:Z

    .line 1191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    return-void

    :cond_0
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/CallStateMonitor;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallGatewayManager;)V
    .locals 3
    .param p1, "callStateMonitor"    # Lcom/android/phone/CallStateMonitor;
    .param p2, "callManager"    # Lcom/android/internal/telephony/CallManager;
    .param p3, "callGatewayManager"    # Lcom/android/phone/CallGatewayManager;

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 116
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    .line 117
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    .line 934
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_DROP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ICC_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_MISSED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOCAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOST_SIGNAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MMI:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->MMI:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->POWER_OFF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMED_OUT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->TIMED_OUT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CM_MM_RR_CONNECTION_RELEASE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CM_MM_RR_CONNECTION_RELEASE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE_TO_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_ROUTE_TO_DESTINATION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCHING_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SWITCHING_CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVICE_NOT_AVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_NOT_IMPLEMENT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_NOT_IMPLEMENT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_BEARER_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->RESTRICTED_BEARER_AVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OPTION_NOT_AVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_NOT_AUTHORIZED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    .line 1313
    new-instance v0, Lcom/mediatek/phone/SuppMessageManager;

    invoke-direct {v0}, Lcom/mediatek/phone/SuppMessageManager;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mSuppMessageManager:Lcom/mediatek/phone/SuppMessageManager;

    .line 1455
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mPhoneIdMap:Ljava/util/HashMap;

    .line 1457
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mNextPhoneId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 125
    iput-object p1, p0, Lcom/android/phone/CallModeler;->mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

    .line 126
    iput-object p2, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 127
    iput-object p3, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    .line 129
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallStateMonitor;->addListener(Landroid/os/Handler;)V

    .line 130
    return-void
.end method

.method private createNewCall()Lcom/android/services/telephony/common/Call;
    .locals 3

    .prologue
    .line 1084
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1087
    .local v0, "callId":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 1093
    .local v1, "newNextCallId":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1095
    new-instance v2, Lcom/android/services/telephony/common/Call;

    invoke-direct {v2, v0}, Lcom/android/services/telephony/common/Call;-><init>(I)V

    return-object v2

    .line 1087
    .end local v1    # "newNextCallId":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private doUpdate(ZLjava/util/List;)V
    .locals 17
    .param p1, "fullUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 453
    .local v13, "telephonyCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getRingingCalls()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getForegroundCalls()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getBackgroundCalls()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 463
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 464
    .local v9, "orphanedConnections":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 465
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 469
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/Call;

    .line 471
    .local v12, "telephonyCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 472
    .local v4, "connection":Lcom/android/internal/telephony/Connection;
    sget-boolean v14, Lcom/android/phone/CallModeler;->DBG:Z

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "connection: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_2
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 475
    invoke-interface {v9, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 482
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v14, v15, :cond_4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v14, v15, :cond_4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    if-eqz p1, :cond_7

    :cond_5
    const/4 v11, 0x1

    .line 493
    .local v11, "shouldUpdate":Z
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_8

    const/4 v7, 0x1

    .line 498
    .local v7, "isDisconnecting":Z
    :goto_2
    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    const/4 v10, 0x1

    .line 503
    .local v10, "shouldCreate":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v10}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    .line 505
    .local v2, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v2, :cond_6

    if-nez v11, :cond_a

    .line 506
    :cond_6
    sget-boolean v14, Lcom/android/phone/CallModeler;->DBG:Z

    if-eqz v14, :cond_1

    sget-object v14, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v15, "update skipped"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    .end local v2    # "call":Lcom/android/services/telephony/common/Call;
    .end local v7    # "isDisconnecting":Z
    .end local v10    # "shouldCreate":Z
    .end local v11    # "shouldUpdate":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_1

    .line 493
    .restart local v11    # "shouldUpdate":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 498
    .restart local v7    # "isDisconnecting":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 510
    .restart local v2    # "call":Lcom/android/services/telephony/common/Call;
    .restart local v10    # "shouldCreate":Z
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v14}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v3

    .line 512
    .local v3, "changed":Z
    if-nez p1, :cond_b

    if-eqz v3, :cond_1

    .line 513
    :cond_b
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 520
    .end local v2    # "call":Lcom/android/services/telephony/common/Call;
    .end local v3    # "changed":Z
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v7    # "isDisconnecting":Z
    .end local v10    # "shouldCreate":Z
    .end local v11    # "shouldUpdate":Z
    :cond_c
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 521
    .restart local v4    # "connection":Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/phone/CallModeler;->updateForConferenceCalls(Lcom/android/internal/telephony/Connection;Ljava/util/List;)Z

    goto :goto_4

    .line 527
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "telephonyCall":Lcom/android/internal/telephony/Call;
    :cond_d
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 528
    .local v8, "orphanedConnection":Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    .line 530
    .restart local v2    # "call":Lcom/android/services/telephony/common/Call;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 531
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .end local v2    # "call":Lcom/android/services/telephony/common/Call;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 540
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    .line 542
    .restart local v2    # "call":Lcom/android/services/telephony/common/Call;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 543
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 548
    .end local v2    # "call":Lcom/android/services/telephony/common/Call;
    .end local v8    # "orphanedConnection":Lcom/android/internal/telephony/Connection;
    :cond_10
    return-void
.end method

.method private dumpPhoneIdMap()V
    .locals 7

    .prologue
    .line 1480
    iget-object v4, p0, Lcom/android/phone/CallModeler;->mPhoneIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1483
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1484
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1485
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 1486
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1487
    .local v3, "phoneId":Ljava/lang/Integer;
    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpPhoneIdMap()... phoneId / phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1489
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "phoneId":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p3, "createIfMissing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;",
            "Lcom/android/internal/telephony/Connection;",
            "Z)",
            "Lcom/android/services/telephony/common/Call;"
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;ZI)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method private getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;ZI)Lcom/android/services/telephony/common/Call;
    .locals 3
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p3, "createIfMissing"    # Z
    .param p4, "blockType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;",
            "Lcom/android/internal/telephony/Connection;",
            "ZI)",
            "Lcom/android/services/telephony/common/Call;"
        }
    .end annotation

    .prologue
    .line 1055
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    const/4 v0, 0x0

    .line 1058
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz p2, :cond_0

    .line 1059
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1060
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 1069
    .restart local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_0
    :goto_0
    return-object v0

    .line 1061
    :cond_1
    if-eqz p3, :cond_0

    .line 1062
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->createNewCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 1063
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/services/telephony/common/Call;->setCreateTime(J)V

    .line 1064
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->setIsIncoming(I)V

    .line 1065
    invoke-virtual {v0, p4}, Lcom/android/services/telephony/common/Call;->setBlockType(I)V

    .line 1066
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1064
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCapabilitiesFor(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;Z)I
    .locals 17
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;
    .param p3, "isForConference"    # Z

    .prologue
    .line 765
    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    const/4 v2, 0x1

    .line 766
    .local v2, "callIsActive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 768
    .local v12, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 769
    .local v3, "canAddCall":Z
    const/4 v5, 0x0

    .line 770
    .local v5, "canMergeCall":Z
    const/4 v8, 0x0

    .line 771
    .local v8, "canSwapCall":Z
    const/4 v7, 0x0

    .line 772
    .local v7, "canRespondViaText":Z
    const/4 v6, 0x0

    .line 774
    .local v6, "canMute":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToSupportHold(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    .line 776
    .local v14, "supportHold":Z
    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToHoldCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    .line 778
    .local v4, "canHold":Z
    :goto_1
    if-eqz p3, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/4 v9, 0x1

    .line 782
    .local v9, "genericConf":Z
    :goto_2
    if-eqz v2, :cond_0

    .line 783
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    .line 784
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v8

    .line 786
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 788
    const/4 v8, 0x1

    .line 794
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 795
    const/4 v4, 0x0

    .line 799
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallModeler;->passedSetupWizard()Z

    move-result v15

    if-eqz v15, :cond_10

    const/4 v3, 0x1

    .line 805
    :goto_3
    const/4 v11, 0x0

    .line 806
    .local v11, "isEmergencyCall":Z
    if-eqz p1, :cond_2

    .line 807
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    .line 810
    :cond_2
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    .line 811
    .local v10, "isECM":Z
    if-nez v11, :cond_3

    if-eqz v10, :cond_11

    .line 812
    :cond_3
    const/4 v6, 0x0

    .line 817
    :goto_4
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/RejectWithTextMessageManager;->allowRespondViaSmsForCall(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    .line 822
    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 823
    const/4 v3, 0x1

    .line 826
    :cond_4
    const/4 v13, 0x0

    .line 827
    .local v13, "retval":I
    if-eqz v4, :cond_5

    .line 828
    or-int/lit8 v13, v13, 0x1

    .line 830
    :cond_5
    if-eqz v14, :cond_6

    .line 831
    or-int/lit8 v13, v13, 0x2

    .line 833
    :cond_6
    if-eqz v3, :cond_7

    .line 834
    or-int/lit8 v13, v13, 0x10

    .line 836
    :cond_7
    if-eqz v5, :cond_8

    .line 837
    or-int/lit8 v13, v13, 0x4

    .line 839
    :cond_8
    if-eqz v8, :cond_9

    .line 840
    or-int/lit8 v13, v13, 0x8

    .line 842
    :cond_9
    if-eqz v7, :cond_a

    .line 843
    or-int/lit8 v13, v13, 0x20

    .line 845
    :cond_a
    if-eqz v6, :cond_b

    .line 846
    or-int/lit8 v13, v13, 0x40

    .line 848
    :cond_b
    if-eqz v9, :cond_c

    .line 849
    or-int/lit16 v13, v13, 0x80

    .line 852
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/CallModeler;->getCapabilitiesForMTK(I)I

    move-result v13

    .line 854
    return v13

    .line 765
    .end local v2    # "callIsActive":Z
    .end local v3    # "canAddCall":Z
    .end local v4    # "canHold":Z
    .end local v5    # "canMergeCall":Z
    .end local v6    # "canMute":Z
    .end local v7    # "canRespondViaText":Z
    .end local v8    # "canSwapCall":Z
    .end local v9    # "genericConf":Z
    .end local v10    # "isECM":Z
    .end local v11    # "isEmergencyCall":Z
    .end local v12    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v13    # "retval":I
    .end local v14    # "supportHold":Z
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 776
    .restart local v2    # "callIsActive":Z
    .restart local v3    # "canAddCall":Z
    .restart local v5    # "canMergeCall":Z
    .restart local v6    # "canMute":Z
    .restart local v7    # "canRespondViaText":Z
    .restart local v8    # "canSwapCall":Z
    .restart local v12    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v14    # "supportHold":Z
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 778
    .restart local v4    # "canHold":Z
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 799
    .restart local v9    # "genericConf":Z
    :cond_10
    const/4 v3, 0x0

    goto :goto_3

    .line 814
    .restart local v10    # "isECM":Z
    .restart local v11    # "isEmergencyCall":Z
    :cond_11
    move v6, v2

    goto :goto_4
.end method

.method private getEarliestLiveConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 609
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 610
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 611
    .local v6, "size":I
    const/4 v2, 0x0

    .line 612
    .local v2, "earliestConn":Lcom/android/internal/telephony/Connection;
    const-wide v3, 0x7fffffffffffffffL

    .line 613
    .local v3, "earliestTime":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 614
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 615
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v9

    if-nez v9, :cond_1

    .line 613
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 617
    .local v7, "time":J
    cmp-long v9, v7, v3

    if-gez v9, :cond_0

    .line 618
    move-wide v3, v7

    .line 619
    move-object v2, v0

    goto :goto_1

    .line 622
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v7    # "time":J
    :cond_2
    return-object v2
.end method

.method private handleMTKMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1292
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1308
    const/4 v0, 0x0

    .line 1310
    :goto_0
    return v0

    .line 1294
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    .line 1310
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1297
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 1300
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onSuppCrssSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 1304
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallModeler;->onVoLteConferenceCallIndication(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 1292
    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0x8c -> :sswitch_1
        0x8d -> :sswitch_2
        0x309 -> :sswitch_3
    .end sparse-switch
.end method

.method private handleRecordProcess()V
    .locals 2

    .prologue
    .line 1232
    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "handleRecording call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    sget-object v0, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallModeler;->isForegroundConnectionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1235
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopRecording()V

    .line 1238
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->updateLastForegroundConnections()V

    .line 1239
    return-void
.end method

.method private hasLiveCallInternal(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 261
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 262
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 270
    :cond_1
    const/4 v3, 0x1

    .line 273
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v2    # "state":I
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static hasOutstandingActiveOrDialingCallInternal(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 284
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 285
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-static {v2}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    :cond_1
    const/4 v3, 0x1

    .line 290
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v2    # "state":I
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private ignoreUpdate()Z
    .locals 6

    .prologue
    .line 1433
    const/4 v2, 0x0

    .line 1434
    .local v2, "shouldIgnore":Z
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 1435
    .local v1, "hasActiveFgCall":Z
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    .line 1436
    .local v0, "hasActiveBgCall":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->hasPendingCallerInfoQuery()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1437
    :goto_0
    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoreUpdate()... shouldIgnore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    return v2

    .line 1436
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isForegroundConnectionChanged()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1198
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v5, "isForegroundConnectionChanged call"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    sget-object v2, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 1225
    :goto_0
    return v2

    .line 1203
    :cond_1
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastForegroundConnections size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isEvdoDTSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1207
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1212
    .local v0, "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_1
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fgCalls size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    sget-object v2, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_3

    move v2, v3

    .line 1215
    goto :goto_0

    .line 1209
    .end local v0    # "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    goto :goto_1

    .line 1218
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1219
    sget-object v2, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v3

    .line 1221
    goto/16 :goto_0

    .line 1218
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v2, v4

    .line 1225
    goto/16 :goto_0
.end method

.method private isPartOfLiveConferenceCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 863
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 869
    .local v1, "currConn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-eq v1, v3, :cond_0

    .line 870
    add-int/lit8 v0, v0, 0x1

    .line 871
    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 872
    const/4 v3, 0x1

    .line 877
    .end local v0    # "count":I
    .end local v1    # "currConn":Lcom/android/internal/telephony/Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v3, 0x0

    .line 351
    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v5, "onDisconnect"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v4, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v4, p1, v3}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 364
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->handleRecordProcess()V

    .line 368
    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 371
    .local v2, "wasConferenced":Z
    :goto_0
    invoke-direct {p0, v0, p1, v3}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    .line 375
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 376
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v3, v0}, Lcom/android/phone/CallModeler$Listener;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 375
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "wasConferenced":Z
    :cond_0
    move v2, v3

    .line 369
    goto :goto_0

    .line 382
    .restart local v1    # "i":I
    .restart local v2    # "wasConferenced":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 383
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 386
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v1    # "i":I
    .end local v2    # "wasConferenced":Z
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 390
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 393
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->updateIncomingCallRejectMessage()V

    .line 395
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->updateDualTalkCallInfo()V

    .line 397
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 403
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "onPhoneStateChanged: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 405
    .local v1, "updatedCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallModeler;->doUpdate(ZLjava/util/List;)V

    .line 407
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->updateDualTalkCallInfo()V

    .line 411
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->ignoreUpdate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v2, v1}, Lcom/android/phone/CallModeler$Listener;->onUpdate(Ljava/util/List;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 428
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->handleRecordProcess()V

    .line 432
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 433
    return-void
.end method

.method private onPostDialChars(Landroid/os/AsyncResult;C)V
    .locals 8
    .param p1, "r"    # Landroid/os/AsyncResult;
    .param p2, "ch"    # C

    .prologue
    const/4 v7, 0x0

    .line 303
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 305
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 306
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 308
    .local v4, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    sget-object v5, Lcom/android/phone/CallModeler$1;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 323
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallModeler$Listener;

    .line 324
    .local v3, "mListener":Lcom/android/phone/CallModeler$Listener;
    const-string v5, ""

    invoke-interface {v3, v4, v7, v5, p2}, Lcom/android/phone/CallModeler$Listener;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V

    goto :goto_0

    .line 310
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mListener":Lcom/android/phone/CallModeler$Listener;
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v5, v0, v7}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 311
    .local v1, "call":Lcom/android/services/telephony/common/Call;
    if-nez v1, :cond_1

    .line 312
    sget-object v5, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v6, "Call no longer exists. Skipping onPostDialWait()."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v1    # "call":Lcom/android/services/telephony/common/Call;
    .end local v4    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_0
    return-void

    .line 314
    .restart local v1    # "call":Lcom/android/services/telephony/common/Call;
    .restart local v4    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallModeler$Listener;

    .line 315
    .restart local v3    # "mListener":Lcom/android/phone/CallModeler$Listener;
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6, p2}, Lcom/android/phone/CallModeler$Listener;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V

    goto :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onSuppCrssSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mSuppMessageManager:Lcom/mediatek/phone/SuppMessageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/SuppMessageManager;->onSuppCrssSuppServiceNotification(Landroid/os/AsyncResult;)V

    .line 1339
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 1340
    return-void
.end method

.method private onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 1316
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mSuppMessageManager:Lcom/mediatek/phone/SuppMessageManager;

    invoke-virtual {v2, p1}, Lcom/mediatek/phone/SuppMessageManager;->onSuppServiceFailed(Landroid/os/AsyncResult;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "errorMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1318
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v2, v0}, Lcom/android/phone/CallModeler$Listener;->onSuppServiceFailed(Ljava/lang/String;)V

    .line 1317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1320
    :cond_0
    return-void
.end method

.method private onSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mSuppMessageManager:Lcom/mediatek/phone/SuppMessageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/SuppMessageManager;->onSuppServiceNotification(Landroid/os/AsyncResult;)V

    .line 1334
    return-void
.end method

.method private passedSetupWizard()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1100
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setCallType(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1169
    const/4 v0, 0x0

    .line 1170
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1171
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1173
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setCallType(I)V

    .line 1180
    :goto_0
    return-void

    .line 1175
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1176
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setCallType(I)V

    goto :goto_0

    .line 1178
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setCallType(I)V

    goto :goto_0
.end method

.method private setIsIncomingFlag(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1183
    if-eqz p2, :cond_0

    .line 1184
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setIsIncomingFlag(Z)V

    .line 1186
    :cond_0
    return-void
.end method

.method private setNewState(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "newState"    # I
    .param p3, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 630
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    if-eq v1, p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 634
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    invoke-virtual {v1, p3}, Lcom/android/phone/CallGatewayManager;->getGatewayInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-result-object v0

    .line 636
    .local v0, "info":Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    invoke-static {p2}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    invoke-virtual {v0}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    invoke-virtual {v0}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->getFormattedGatewayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setGatewayNumber(Ljava/lang/String;)V

    .line 639
    iget-object v1, v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setGatewayPackage(Ljava/lang/String;)V

    .line 645
    :cond_0
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 646
    return-void

    .line 630
    .end local v0    # "info":Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 641
    .restart local v0    # "info":Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    :cond_2
    invoke-static {p2}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    invoke-virtual {v1, p3}, Lcom/android/phone/CallGatewayManager;->clearGatewayData(Lcom/android/internal/telephony/Connection;)V

    goto :goto_1
.end method

.method private setPhoneIdFromMap(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1460
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mPhoneIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1464
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mNextPhoneId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1465
    .local v1, "phoneId":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    .line 1466
    .local v0, "newPhoneId":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mNextPhoneId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1467
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    .end local v0    # "newPhoneId":I
    .end local v1    # "phoneId":I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mPhoneIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1471
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mPhoneIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/common/Call;->setPhoneId(I)V

    .line 1477
    :goto_1
    return-void

    .line 1465
    .restart local v1    # "phoneId":I
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 1473
    .end local v1    # "phoneId":I
    :cond_3
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "should not come here, for here mPhoneIdMap should awalys has value. So dump mPhoneIdMap as below: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the target phone is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->dumpPhoneIdMap()V

    goto :goto_1
.end method

.method private setSlotId(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1159
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1160
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1161
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v1

    .line 1162
    .local v1, "slotId":I
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setSlotId]get slotId from phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setSlotId(I)V

    .line 1166
    .end local v1    # "slotId":I
    :cond_0
    return-void
.end method

.method private translateDisconnectCauseFromTelephony(Lcom/android/internal/telephony/Connection$DisconnectCause;)Lcom/android/services/telephony/common/Call$DisconnectCause;
    .locals 1
    .param p1, "causeSource"    # Lcom/android/internal/telephony/Connection$DisconnectCause;

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 1037
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    goto :goto_0
.end method

.method private translateStateFromTelephony(Lcom/android/internal/telephony/Connection;Z)I
    .locals 4
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "isForConference"    # Z

    .prologue
    .line 882
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 885
    .local v0, "connState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-ne v2, p1, :cond_0

    .line 886
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 889
    :cond_0
    const/4 v1, 0x1

    .line 890
    .local v1, "retval":I
    sget-object v2, Lcom/android/phone/CallModeler$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 923
    :goto_0
    if-nez p2, :cond_1

    .line 926
    invoke-direct {p0, p1}, Lcom/android/phone/CallModeler;->isPartOfLiveConferenceCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 927
    const/16 v1, 0xa

    .line 931
    .end local v1    # "retval":I
    :cond_1
    return v1

    .line 892
    .restart local v1    # "retval":I
    :pswitch_0
    const/4 v1, 0x2

    .line 893
    goto :goto_0

    .line 895
    :pswitch_1
    const/4 v1, 0x3

    .line 896
    goto :goto_0

    .line 901
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->getIsRedialCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 902
    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    .line 904
    :cond_3
    const/4 v1, 0x5

    .line 906
    goto :goto_0

    .line 908
    :pswitch_3
    const/4 v1, 0x4

    .line 909
    goto :goto_0

    .line 911
    :pswitch_4
    const/4 v1, 0x7

    .line 912
    goto :goto_0

    .line 914
    :pswitch_5
    const/16 v1, 0x8

    .line 915
    goto :goto_0

    .line 917
    :pswitch_6
    const/16 v1, 0x9

    goto :goto_0

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z
    .locals 25
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p3, "isForConference"    # Z

    .prologue
    .line 658
    const/4 v4, 0x0

    .line 660
    .local v4, "changed":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallModeler;->translateStateFromTelephony(Lcom/android/internal/telephony/Connection;Z)I

    move-result v15

    .line 662
    .local v15, "newState":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v15, :cond_0

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v15, v2}, Lcom/android/phone/CallModeler;->setNewState(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V

    .line 664
    const/4 v4, 0x1

    .line 667
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/CallModeler;->translateDisconnectCauseFromTelephony(Lcom/android/internal/telephony/Connection$DisconnectCause;)Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v11

    .line 669
    .local v11, "newDisconnectCause":Lcom/android/services/telephony/common/Call$DisconnectCause;
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v21

    move-object/from16 v0, v21

    if-eq v0, v11, :cond_1

    .line 670
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->setDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)V

    .line 671
    const/4 v4, 0x1

    .line 674
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v17

    .line 675
    .local v17, "oldConnectTime":J
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v21

    cmp-long v21, v17, v21

    if-eqz v21, :cond_2

    .line 676
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/services/telephony/common/Call;->setConnectTime(J)V

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v23

    sub-long v21, v21, v23

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/services/telephony/common/Call;->setConnectTimeReal(J)V

    .line 681
    const/4 v4, 0x1

    .line 684
    :cond_2
    if-nez p3, :cond_c

    .line 686
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 687
    .local v19, "oldNumber":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 688
    .local v12, "newNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallGatewayManager;->getGatewayInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-result-object v8

    .line 689
    .local v8, "info":Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    invoke-virtual {v8}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3

    .line 690
    iget-object v12, v8, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    .line 692
    :cond_3
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 693
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/services/telephony/common/Call;->setNumber(Ljava/lang/String;)V

    .line 694
    const/4 v4, 0x1

    .line 698
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v14

    .line 699
    .local v14, "newPostDialString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    if-eq v0, v14, :cond_6

    .line 700
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/common/Call;->setPostDialString(Ljava/lang/String;)V

    .line 701
    const/4 v4, 0x1

    .line 705
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v13

    .line 706
    .local v13, "newNumberPresentation":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getNumberPresentation()I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v13, :cond_7

    .line 707
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/services/telephony/common/Call;->setNumberPresentation(I)V

    .line 708
    const/4 v4, 0x1

    .line 712
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v16

    .line 713
    .local v16, "oldCnapName":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 714
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->setCnapName(Ljava/lang/String;)V

    .line 715
    const/4 v4, 0x1

    .line 719
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v10

    .line 720
    .local v10, "newCnapNamePresentation":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCnapNamePresentation()I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v10, :cond_a

    .line 721
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/services/telephony/common/Call;->setCnapNamePresentation(I)V

    .line 722
    const/4 v4, 0x1

    .line 748
    .end local v8    # "info":Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    .end local v10    # "newCnapNamePresentation":I
    .end local v12    # "newNumber":Ljava/lang/String;
    .end local v13    # "newNumberPresentation":I
    .end local v14    # "newPostDialString":Ljava/lang/String;
    .end local v16    # "oldCnapName":Ljava/lang/String;
    .end local v19    # "oldNumber":Ljava/lang/String;
    :cond_a
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallModeler;->getCapabilitiesFor(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;Z)I

    move-result v9

    .line 749
    .local v9, "newCapabilities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCapabilities()I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v9, :cond_b

    .line 750
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/services/telephony/common/Call;->setCapabilities(I)V

    .line 751
    const/4 v4, 0x1

    .line 755
    :cond_b
    invoke-direct/range {p0 .. p2}, Lcom/android/phone/CallModeler;->updateCallFromConnectionMTK(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V

    .line 758
    return v4

    .line 731
    .end local v9    # "newCapabilities":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v20

    .line 732
    .local v20, "oldSet":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->removeAllChildren()V

    .line 734
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    if-eqz v21, :cond_e

    .line 735
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 736
    .local v6, "childConn":Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v6, v2}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v5

    .line 737
    .local v5, "childCall":Lcom/android/services/telephony/common/Call;
    if-eqz v5, :cond_d

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 738
    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->addChildId(I)V

    goto :goto_1

    .line 742
    .end local v5    # "childCall":Lcom/android/services/telephony/common/Call;
    .end local v6    # "childConn":Lcom/android/internal/telephony/Connection;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/google/common/collect/ImmutableSortedSet;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    const/16 v21, 0x1

    :goto_2
    or-int v4, v4, v21

    goto :goto_0

    :cond_f
    const/16 v21, 0x0

    goto :goto_2
.end method

.method private updateCallFromConnectionMTK(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1360
    sget-boolean v1, Lcom/android/phone/CallModeler;->DBG:Z

    if-eqz v1, :cond_0

    .line 1361
    sget-object v1, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCallFromConnectionMTK],  call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; connection ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallModeler;->setSlotId(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V

    .line 1363
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallModeler;->setCallType(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V

    .line 1364
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallModeler;->setIsIncomingFlag(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V

    .line 1366
    const/4 v0, 0x0

    .line 1367
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1368
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1370
    :cond_1
    if-eqz v0, :cond_2

    .line 1371
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setPhoneType(I)V

    .line 1372
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallModeler;->setPhoneIdFromMap(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Phone;)V

    .line 1376
    :cond_2
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1377
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getRejectCallNotifyMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setRejectCallNotifyMsg(Ljava/lang/String;)V

    .line 1400
    :cond_3
    return-void
.end method

.method private updateDualTalkCallInfo()V
    .locals 6

    .prologue
    .line 1403
    new-instance v2, Lcom/android/services/telephony/common/DualtalkCallInfo;

    invoke-direct {v2}, Lcom/android/services/telephony/common/DualtalkCallInfo;-><init>()V

    .line 1404
    .local v2, "info":Lcom/android/services/telephony/common/DualtalkCallInfo;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    .line 1405
    .local v0, "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_0

    .line 1406
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->updateCdmaPhoneCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->setCdmaPhoneCallState(I)V

    .line 1407
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->setIsThreeWayCallOrigStateDialing(Z)V

    .line 1410
    :cond_0
    if-eqz v0, :cond_1

    .line 1411
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->isSecondHoldCallVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->setIsSecondHoldCallVisible(Z)V

    .line 1412
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->isSecondaryCallVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->setIsSecondaryCallVisible(Z)V

    .line 1413
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->setIsCdmaAndGsmActive(Z)V

    .line 1414
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->setIsDualTalkMultipleHoldCase(Z)V

    .line 1415
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->setHasDualHoldCallsOnly(Z)V

    .line 1416
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->setHasMultipleRingingCall(Z)V

    .line 1417
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->setIsRingingWhenOutgoing(Z)V

    .line 1419
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1420
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v3, v2}, Lcom/android/phone/CallModeler$Listener;->updateDualtalkCallStatus(Lcom/android/services/telephony/common/DualtalkCallInfo;)V

    .line 1419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1422
    :cond_2
    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateDualTalkCallInfo],  info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    return-void
.end method

.method private updateForConferenceCalls(Lcom/android/internal/telephony/Connection;Ljava/util/List;)Z
    .locals 8
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "updatedCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 563
    invoke-direct {p0, p1}, Lcom/android/phone/CallModeler;->isPartOfLiveConferenceCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallModeler;->getEarliestLiveConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    if-ne v6, p1, :cond_2

    move v2, v4

    .line 572
    .local v2, "isConferenceCallConnection":Z
    :goto_0
    const/4 v0, 0x0

    .line 577
    .local v0, "changed":Z
    if-eqz v2, :cond_3

    .line 578
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v5, p1, v4}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 579
    .local v1, "confCall":Lcom/android/services/telephony/common/Call;
    invoke-direct {p0, v1, p1, v4}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v0

    .line 581
    if-eqz v0, :cond_0

    .line 582
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_0
    sget-boolean v4, Lcom/android/phone/CallModeler;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating a conference call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v1    # "confCall":Lcom/android/services/telephony/common/Call;
    :cond_1
    :goto_1
    return v0

    .end local v0    # "changed":Z
    .end local v2    # "isConferenceCallConnection":Z
    :cond_2
    move v2, v5

    .line 563
    goto :goto_0

    .line 590
    .restart local v0    # "changed":Z
    .restart local v2    # "isConferenceCallConnection":Z
    :cond_3
    iget-object v6, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v6, p1, v5}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    .line 594
    .local v3, "oldConfCall":Lcom/android/services/telephony/common/Call;
    if-eqz v3, :cond_1

    .line 595
    sget-boolean v5, Lcom/android/phone/CallModeler;->DBG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up an old conference call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_4
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-virtual {v3, v4}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 598
    const/4 v0, 0x1

    .line 601
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateIncomingCallRejectMessage()V
    .locals 7

    .prologue
    .line 1343
    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v5, "updateIncomingCallRejectMessage."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1345
    .local v3, "updatedCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    iget-object v4, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1346
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1347
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/services/telephony/common/Call;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getRejectCallNotifyMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/common/Call;->setRejectCallNotifyMsg(Ljava/lang/String;)V

    .line 1348
    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateIncomingCallRejectMessage: call:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1352
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1353
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1354
    iget-object v4, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v4, v3}, Lcom/android/phone/CallModeler$Listener;->onUpdate(Ljava/util/List;)V

    .line 1353
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1357
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private updateLastForegroundConnections()V
    .locals 4

    .prologue
    .line 1246
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "-updatePrevPhonenums:update the previous phone number list."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isEvdoDTSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1255
    .local v0, "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_0
    sget-object v2, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1257
    sget-object v2, Lcom/android/phone/CallModeler;->mLastForegroundConnections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1252
    .end local v0    # "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    goto :goto_0

    .line 1259
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/phone/CallModeler$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/CallModeler$Listener;

    .prologue
    .line 166
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    return-void
.end method

.method public getCallFromExistMap(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;
    .locals 6
    .param p1, "callId"    # I

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 185
    new-instance v4, Lcom/android/phone/CallModeler$CallResult;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-direct {v4, v2, v3, v5}, Lcom/android/phone/CallModeler$CallResult;-><init>(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallModeler$1;)V

    move-object v2, v4

    .line 194
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    :goto_0
    return-object v2

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 191
    new-instance v4, Lcom/android/phone/CallModeler$CallResult;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-direct {v4, v2, v3, v5}, Lcom/android/phone/CallModeler$CallResult;-><init>(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallModeler$1;)V

    move-object v2, v4

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    :cond_3
    move-object v2, v5

    .line 194
    goto :goto_0
.end method

.method public getCapabilitiesForMTK(I)I
    .locals 3
    .param p1, "retval"    # I

    .prologue
    .line 1262
    move v1, p1

    .line 1263
    .local v1, "capabilities":I
    new-instance v0, Lcom/mediatek/phone/CallCapabilityHelper;

    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, v2}, Lcom/mediatek/phone/CallCapabilityHelper;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 1264
    .local v0, "callCapabilityHelper":Lcom/mediatek/phone/CallCapabilityHelper;
    invoke-virtual {v0}, Lcom/mediatek/phone/CallCapabilityHelper;->update()V

    .line 1265
    iget-boolean v2, v0, Lcom/mediatek/phone/CallCapabilityHelper;->canRecord:Z

    if-eqz v2, :cond_0

    .line 1266
    or-int/lit16 v1, v1, 0x100

    .line 1268
    :cond_0
    iget-boolean v2, v0, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupAll:Z

    if-eqz v2, :cond_1

    .line 1269
    or-int/lit16 v1, v1, 0x200

    .line 1271
    :cond_1
    iget-boolean v2, v0, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupHolding:Z

    if-eqz v2, :cond_2

    .line 1272
    or-int/lit16 v1, v1, 0x400

    .line 1274
    :cond_2
    iget-boolean v2, v0, Lcom/mediatek/phone/CallCapabilityHelper;->canHangupActiveAndAnswerWaiting:Z

    if-eqz v2, :cond_3

    .line 1275
    or-int/lit16 v1, v1, 0x800

    .line 1277
    :cond_3
    iget-boolean v2, v0, Lcom/mediatek/phone/CallCapabilityHelper;->canECT:Z

    if-eqz v2, :cond_4

    .line 1278
    or-int/lit16 v1, v1, 0x1000

    .line 1280
    :cond_4
    iget-boolean v2, v0, Lcom/mediatek/phone/CallCapabilityHelper;->canVTVoiceAnswer:Z

    if-eqz v2, :cond_5

    .line 1281
    or-int/lit16 v1, v1, 0x2000

    .line 1284
    :cond_5
    iget-boolean v2, v0, Lcom/mediatek/phone/CallCapabilityHelper;->canShowSwap:Z

    if-eqz v2, :cond_6

    .line 1285
    or-int/lit16 v1, v1, 0x4000

    .line 1288
    :cond_6
    return v1
.end method

.method public getFullList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    .local v0, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    return-object v0
.end method

.method public getVoLteConfedCall(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/Call;
    .locals 3
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 1531
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/CallModeler;->handleMTKMessage(Landroid/os/Message;)Z

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 163
    :goto_0
    :sswitch_0
    return-void

    .line 150
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onDisconnect(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 155
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 158
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-char v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallModeler;->onPostDialChars(Landroid/os/AsyncResult;C)V

    goto :goto_0

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xd -> :sswitch_3
        0x67 -> :sswitch_1
        0xcb -> :sswitch_1
        0x12f -> :sswitch_1
    .end sparse-switch
.end method

.method public hasLiveCall()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->hasLiveCallInternal(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->hasLiveCallInternal(Ljava/util/HashMap;)Z

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

.method public hasOutstandingActiveOrDialingCall()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/phone/CallModeler;->hasOutstandingActiveOrDialingCallInternal(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/phone/CallModeler;->hasOutstandingActiveOrDialingCallInternal(Ljava/util/HashMap;)Z

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

.method public markDialingCallAsECC()V
    .locals 6

    .prologue
    .line 1494
    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v4, "markDialingCallAsECC~~"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1496
    .local v2, "telephonyCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1499
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1500
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 1501
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get dialing call, call = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    if-eqz v0, :cond_1

    .line 1504
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->markAsECCCall()V

    .line 1507
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_1
    return-void
.end method

.method public markDialingCalltoWaiting()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1512
    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v4, "markDialingCalltoWaiting~~"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1514
    .local v2, "telephonyCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1517
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1518
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v3, v1, v6}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 1519
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    sget-object v3, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get dialing call, call = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    if-eqz v0, :cond_1

    .line 1522
    invoke-virtual {v0, v6}, Lcom/android/services/telephony/common/Call;->markAsWaitingCall(Z)V

    .line 1525
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_1
    return-void
.end method

.method public onCdmaCallWaiting(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;I)V
    .locals 6
    .param p1, "callWaitingInfo"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .param p2, "blockType"    # I

    .prologue
    .line 206
    iget-object v4, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 209
    .local v3, "teleCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 210
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 212
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "number":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    invoke-virtual {p0, v1, p2}, Lcom/android/phone/CallModeler;->onNewRingingConnection(Lcom/android/internal/telephony/Connection;I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 216
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    iput-object v1, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    .line 226
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v2    # "number":Ljava/lang/String;
    :goto_0
    return-void

    .line 222
    :cond_0
    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v5, "CDMA Call waiting notification without a matching connection."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->updateDualTalkCallInfo()V

    goto :goto_0
.end method

.method public onCdmaCallWaitingReject()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    .line 237
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->updateDualTalkCallInfo()V

    .line 239
    return-void

    .line 234
    :cond_0
    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "CDMA Call waiting rejection without an incoming call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCrssSuppServiceNumberUpdate(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1543
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 1544
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    .line 1545
    invoke-virtual {v0, p2}, Lcom/android/services/telephony/common/Call;->setNumber(Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    .line 1547
    .local v1, "callId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1548
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallModeler$Listener;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-interface {v3, v4, p2}, Lcom/android/phone/CallModeler$Listener;->onCrssSuppServiceNumberUpdate(ILjava/lang/String;)V

    .line 1547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1551
    .end local v1    # "callId":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method onNewRingingConnection(Lcom/android/internal/telephony/Connection;I)Lcom/android/services/telephony/common/Call;
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "blockType"    # I

    .prologue
    .line 332
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "onNewRingingConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->updateDualTalkCallInfo()V

    .line 336
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;ZI)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 338
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    .line 339
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    .line 341
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v2, v0}, Lcom/android/phone/CallModeler$Listener;->onIncoming(Lcom/android/services/telephony/common/Call;)V

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 347
    return-object v0
.end method

.method public onSeparateSipCallFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 1326
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallModeler$Listener;

    .line 1327
    .local v1, "listener":Lcom/android/phone/CallModeler$Listener;
    invoke-interface {v1, p1}, Lcom/android/phone/CallModeler$Listener;->onSuppServiceFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 1329
    .end local v1    # "listener":Lcom/android/phone/CallModeler$Listener;
    :cond_0
    return-void
.end method

.method onVoLteConferenceCallIndication(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "asyncResult"    # Landroid/os/AsyncResult;

    .prologue
    .line 1535
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ConferenceCallXml;

    .line 1536
    .local v0, "xmlData":Lcom/android/internal/telephony/ConferenceCallXml;
    invoke-static {}, Lcom/mediatek/phone/volte/VoLteConfModeler;->getInstance()Lcom/mediatek/phone/volte/VoLteConfModeler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/phone/volte/VoLteConfModeler;->processConferenceCallIndication(Lcom/android/internal/telephony/ConferenceCallXml;)V

    .line 1537
    return-void
.end method

.method public setCdmaOutgoing3WayCall(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 249
    .local v0, "wasSet":Z
    :goto_0
    iput-object p1, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    .line 254
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 257
    :cond_0
    return-void

    .line 247
    .end local v0    # "wasSet":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCalls()V
    .locals 3

    .prologue
    .line 1442
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1443
    .local v1, "updatedCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallModeler;->doUpdate(ZLjava/util/List;)V

    .line 1444
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->ignoreUpdate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1445
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1447
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v2, v1}, Lcom/android/phone/CallModeler$Listener;->onUpdate(Ljava/util/List;)V

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1451
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
