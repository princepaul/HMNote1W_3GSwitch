.class Lcom/mediatek/settings/MultipleSimActivity$6;
.super Ljava/lang/Object;
.source "MultipleSimActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 311
    iput-object p1, p0, Lcom/mediatek/settings/MultipleSimActivity$6;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity$6;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    iget-object v0, v0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity$6;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    iget-object v0, v0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity$6;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    iget-object v0, v0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity$6;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/MultipleSimActivity;->removeDialog(I)V

    .line 319
    return-void
.end method
