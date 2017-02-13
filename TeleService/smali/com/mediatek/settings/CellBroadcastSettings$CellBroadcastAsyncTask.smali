.class Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
.super Landroid/os/AsyncTask;
.source "CellBroadcastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CellBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellBroadcastAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p2, "x1"    # Lcom/mediatek/settings/CellBroadcastSettings$1;

    .prologue
    .line 1045
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1045
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1079
    const-string v0, "Settings/CellBroadcastSettings"

    const-string v1, "task is working"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->queryChannelFromDatabase()Z
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2900(Lcom/mediatek/settings/CellBroadcastSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->initChannelMap()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$3000(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 1082
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1900(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$3100(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/util/ArrayList;)V

    .line 1086
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1097
    const-string v0, "Settings/CellBroadcastSettings"

    const-string v1, "cancel task"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->updateUI()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$3200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 1099
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1100
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1045
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1091
    const-string v0, "Settings/CellBroadcastSettings"

    const-string v1, "task finished"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->updateUI()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$3200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 1093
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1050
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    :cond_0
    const-string v0, "Settings/CellBroadcastSettings"

    const-string v1, "onPreExecute, activity is finished, do nothing"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->updateStatus(Z)V
    invoke-static {v0, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2600(Lcom/mediatek/settings/CellBroadcastSettings;Z)V

    .line 1056
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2700(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 1057
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2802(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1058
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1059
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1060
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask$1;-><init>(Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1074
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
