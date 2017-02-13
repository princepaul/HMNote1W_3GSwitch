.class public Lcom/android/phone/utils/DcStatMonitor;
.super Ljava/lang/Object;
.source "DcStatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/utils/DcStatMonitor$1;,
        Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_CONNECTION:Ljava/lang/String; = "mobile_data"

.field private static final KEY_DATA_CONNECTED:Ljava/lang/String; = "connected_time"

.field private static final KEY_DATA_CONNECTING:Ljava/lang/String; = "connecting_time"

.field private static final KEY_DATA_DISCONNECTED:Ljava/lang/String; = "disconnected_time"

.field private static final KEY_DATA_SUSPENDED:Ljava/lang/String; = "suspended_time"


# instance fields
.field private mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v0, p0, Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 35
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    new-instance v1, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;-><init>(Lcom/android/phone/utils/DcStatMonitor;Lcom/android/phone/utils/DcStatMonitor$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE_MOBILE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/utils/DcStatMonitor;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/utils/DcStatMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/utils/DcStatMonitor;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/utils/DcStatMonitor;
    .param p1, "x1"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/utils/DcStatMonitor;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/utils/DcStatMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/utils/DcStatMonitor;->networkClassToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private networkClassToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "networkClass"    # I

    .prologue
    .line 78
    const-string v0, "UNKNOWN"

    .line 79
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    const-string v0, "2G"

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    const-string v0, "3G"

    .line 85
    goto :goto_0

    .line 87
    :pswitch_2
    const-string v0, "4G"

    .line 88
    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
