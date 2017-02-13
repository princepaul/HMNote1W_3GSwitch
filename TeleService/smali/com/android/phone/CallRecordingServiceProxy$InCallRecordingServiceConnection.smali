.class Lcom/android/phone/CallRecordingServiceProxy$InCallRecordingServiceConnection;
.super Ljava/lang/Object;
.source "CallRecordingServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallRecordingServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallRecordingServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallRecordingServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallRecordingServiceProxy;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/phone/CallRecordingServiceProxy$InCallRecordingServiceConnection;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallRecordingServiceProxy;Lcom/android/phone/CallRecordingServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CallRecordingServiceProxy;
    .param p2, "x1"    # Lcom/android/phone/CallRecordingServiceProxy$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/phone/CallRecordingServiceProxy$InCallRecordingServiceConnection;-><init>(Lcom/android/phone/CallRecordingServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 318
    const-string v0, "CallRecordingServiceProxy"

    const-string v1, "Service Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy$InCallRecordingServiceConnection;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    invoke-static {p2}, Lcom/android/services/telephony/common/ICallRecordingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallRecordingService;

    move-result-object v1

    # setter for: Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;
    invoke-static {v0, v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$002(Lcom/android/phone/CallRecordingServiceProxy;Lcom/android/services/telephony/common/ICallRecordingService;)Lcom/android/services/telephony/common/ICallRecordingService;

    .line 321
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy$InCallRecordingServiceConnection;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    invoke-virtual {v0}, Lcom/android/phone/CallRecordingServiceProxy;->checkCallRecordingState()V

    .line 322
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 326
    const-string v0, "CallRecordingServiceProxy"

    const-string v1, "Disconnected from UI service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy$InCallRecordingServiceConnection;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # invokes: Lcom/android/phone/CallRecordingServiceProxy;->unBind()V
    invoke-static {v0}, Lcom/android/phone/CallRecordingServiceProxy;->access$400(Lcom/android/phone/CallRecordingServiceProxy;)V

    .line 328
    return-void
.end method
