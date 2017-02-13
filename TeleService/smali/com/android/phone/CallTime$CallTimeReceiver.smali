.class Lcom/android/phone/CallTime$CallTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallTimeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallTime;


# direct methods
.method constructor <init>(Lcom/android/phone/CallTime;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/phone/CallTime$CallTimeReceiver;->this$0:Lcom/android/phone/CallTime;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 429
    const-string v0, "calltime_minute_reminder"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/phone/CallTime$CallTimeReceiver;->this$0:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->updateRminder()V

    .line 432
    :cond_0
    return-void
.end method
