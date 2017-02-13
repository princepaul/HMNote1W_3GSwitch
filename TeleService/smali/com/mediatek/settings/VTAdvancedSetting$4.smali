.class Lcom/mediatek/settings/VTAdvancedSetting$4;
.super Ljava/lang/Object;
.source "VTAdvancedSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/VTAdvancedSetting;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/VTAdvancedSetting;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting$4;->this$0:Lcom/mediatek/settings/VTAdvancedSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 481
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 485
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$4;->this$0:Lcom/mediatek/settings/VTAdvancedSetting;

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->setCropParametersForIntent(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/mediatek/settings/VTAdvancedSetting;->access$2200(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/content/Intent;)V

    .line 488
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting$4;->this$0:Lcom/mediatek/settings/VTAdvancedSetting;

    const/16 v3, 0xbcd

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/settings/VTAdvancedSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "get Content, ActivityNotFoundException !"

    # invokes: Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->access$1900(Ljava/lang/String;)V

    goto :goto_0
.end method
