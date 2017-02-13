.class Lcom/android/phone/BluetoothPhoneService$CallInfo;
.super Ljava/lang/Object;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallInfo"
.end annotation


# instance fields
.field private mBackgroundCallState:Lcom/android/internal/telephony/Call$State;

.field private mFgCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;

.field private mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

.field private mOldRingingCallState:Lcom/android/internal/telephony/Call$State;

.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 869
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object v4, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 876
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mBackgroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 877
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 878
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 879
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 880
    iput-object v4, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mFgCalls:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothPhoneService;Lcom/android/phone/BluetoothPhoneService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p2, "x1"    # Lcom/android/phone/BluetoothPhoneService$1;

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .param p1, "x1"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .param p1, "x1"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .param p1, "x1"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .param p1, "x1"    # Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mFgCalls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/BluetoothPhoneService$CallInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mFgCalls:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .param p1, "x1"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$CallInfo;->mBackgroundCallState:Lcom/android/internal/telephony/Call$State;

    return-object p1
.end method
