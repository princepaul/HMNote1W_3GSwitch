.class Lcom/android/phone/HfaActivity$1;
.super Ljava/lang/Object;
.source "HfaActivity.java"

# interfaces
.implements Lcom/android/phone/HfaLogic$HfaLogicCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HfaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HfaActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/HfaActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/phone/HfaActivity$1;->this$0:Lcom/android/phone/HfaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/HfaActivity$1;->this$0:Lcom/android/phone/HfaActivity;

    # invokes: Lcom/android/phone/HfaActivity;->onHfaError(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/phone/HfaActivity;->access$100(Lcom/android/phone/HfaActivity;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/HfaActivity$1;->this$0:Lcom/android/phone/HfaActivity;

    # invokes: Lcom/android/phone/HfaActivity;->onHfaSuccess()V
    invoke-static {v0}, Lcom/android/phone/HfaActivity;->access$000(Lcom/android/phone/HfaActivity;)V

    .line 55
    return-void
.end method
