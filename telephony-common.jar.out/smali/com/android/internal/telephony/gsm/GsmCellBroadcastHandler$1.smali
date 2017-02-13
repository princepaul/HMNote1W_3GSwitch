.class Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 396
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.telephony.etws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const-string v1, "simId"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->access$000(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 398
    .local v0, "etws_sim":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive EVENT_ETWS_ALARM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->access$100(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->access$200(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/android/internal/telephony/CellBroadcastFwkExt;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->access$300(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)Lcom/android/internal/telephony/CellBroadcastFwkExt;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/EtwsNotification;

    invoke-direct {v2}, Lcom/android/internal/telephony/EtwsNotification;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->closeEtwsChannel(Lcom/android/internal/telephony/EtwsNotification;)V

    .line 401
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->stopEtwsAlarm()V

    .line 404
    .end local v0    # "etws_sim":I
    :cond_0
    return-void
.end method
