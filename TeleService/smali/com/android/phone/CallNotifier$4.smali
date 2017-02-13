.class Lcom/android/phone/CallNotifier$4;
.super Landroid/os/AsyncTask;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->notifyIncomingCallToBracelet(Lcom/android/internal/telephony/CallerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lmiui/yellowpage/YellowPagePhone;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 4260
    iput-object p1, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    iput-object p2, p0, Lcom/android/phone/CallNotifier$4;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/CallNotifier$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4260
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/CallNotifier$4;->doInBackground([Ljava/lang/Void;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lmiui/yellowpage/YellowPagePhone;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 4264
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$4;->val$number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4269
    :goto_0
    return-object v1

    .line 4265
    :catch_0
    move-exception v0

    .line 4266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4267
    const-string v1, "CallNotifier"

    const-string v2, "doYellowPageQuery: getPhoneInfo has error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4260
    check-cast p1, Lmiui/yellowpage/YellowPagePhone;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/CallNotifier$4;->onPostExecute(Lmiui/yellowpage/YellowPagePhone;)V

    return-void
.end method

.method protected onPostExecute(Lmiui/yellowpage/YellowPagePhone;)V
    .locals 2
    .param p1, "yellowPagePhone"    # Lmiui/yellowpage/YellowPagePhone;

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/CallNotifier;->isQueryInProcess:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$2102(Lcom/android/phone/CallNotifier;Z)Z

    .line 4275
    iget-object v0, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$4;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/android/phone/CallNotifier;->notifyToMiband(Landroid/content/Intent;Lmiui/yellowpage/YellowPagePhone;)V
    invoke-static {v0, v1, p1}, Lcom/android/phone/CallNotifier;->access$2200(Lcom/android/phone/CallNotifier;Landroid/content/Intent;Lmiui/yellowpage/YellowPagePhone;)V

    .line 4276
    return-void
.end method
