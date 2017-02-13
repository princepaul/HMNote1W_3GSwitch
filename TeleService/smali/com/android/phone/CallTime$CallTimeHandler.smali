.class Lcom/android/phone/CallTime$CallTimeHandler;
.super Landroid/os/Handler;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallTimeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallTime;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallTime;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/phone/CallTime$CallTimeHandler;->this$0:Lcom/android/phone/CallTime;

    .line 438
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 439
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 443
    return-void
.end method
