.class Lcom/mediatek/settings/VTAdvancedSetting$3;
.super Ljava/lang/Object;
.source "VTAdvancedSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/VTAdvancedSetting;

.field final synthetic val$mBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$mImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting$3;->this$0:Lcom/mediatek/settings/VTAdvancedSetting;

    iput-object p2, p0, Lcom/mediatek/settings/VTAdvancedSetting$3;->val$mImg:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/mediatek/settings/VTAdvancedSetting$3;->val$mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$3;->val$mImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 454
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$3;->val$mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$3;->val$mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting$3;->val$mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    :cond_0
    return-void
.end method
