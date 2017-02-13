.class Lcom/mediatek/settings/MultipleSimActivity$3;
.super Ljava/lang/Object;
.source "MultipleSimActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/MultipleSimActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/MultipleSimActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/mediatek/settings/MultipleSimActivity$3;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 277
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity$3;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    # invokes: Lcom/mediatek/settings/MultipleSimActivity;->setCropParametersForIntent(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/mediatek/settings/MultipleSimActivity;->access$200(Lcom/mediatek/settings/MultipleSimActivity;Landroid/content/Intent;)V

    .line 280
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity$3;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const/16 v3, 0xbcd

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/settings/MultipleSimActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity$3;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const-string v3, "Pictrue not found , Gallery ActivityNotFoundException !"

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
