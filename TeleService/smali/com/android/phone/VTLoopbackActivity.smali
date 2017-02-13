.class public Lcom/android/phone/VTLoopbackActivity;
.super Landroid/app/Activity;
.source "VTLoopbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mHighVideoChanged:Z

.field private mLowVideoChanged:Z

.field private mVTDial:Landroid/widget/Button;

.field private mVTEnd:Landroid/widget/Button;

.field private mVTHighVideo:Landroid/view/SurfaceView;

.field private mVTLowVideo:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/android/phone/VTLoopbackActivity;->mHighVideoChanged:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/phone/VTLoopbackActivity;->mLowVideoChanged:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v3, 0x32

    .line 125
    const v0, 0x7f0700b5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 126
    const-string v0, "VTLoopBack"

    const-string v1, "VT loopback : dial ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "VTLoopBack"

    const-string v1, "VTSettingUtils.getInstance().updateVTEngineerModeValues() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/settings/VTSettingUtils;->updateVTEngineerModeValues()V

    .line 130
    const-string v0, "VTLoopBack"

    const-string v1, "VTSettingUtils.getInstance().updateVTEngineerModeValues() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().setVTOpen() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setVTOpen(Landroid/content/Context;I)V

    .line 134
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().setVTOpen() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().setVTReady() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 138
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 139
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().setVTReady() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().onConnected() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 143
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTConnected()V

    .line 144
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().onConnected() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const v0, 0x7f0700b9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 147
    const-string v0, "VTLoopBack"

    const-string v1, "VT loopback : hangup ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().onDisconnected() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 151
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().onDisconnected() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().setVTClose() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 155
    const-string v0, "VTLoopBack"

    const-string v1, "VTManager.getInstance().setVTClose() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const-string v0, "VTLoopbackActivity"

    const-string v1, "VTLoopback suspend, since VT is not support in this project"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "VTLoopBack"

    const-string v1, "onPause! -> finish itself !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/VTLoopbackActivity;->finish()V

    .line 74
    const-string v0, "VTLoopBack"

    const-string v1, "onPause->VTManager.getInstance().onDisconnected() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 76
    const-string v0, "VTLoopBack"

    const-string v1, "onPause->VTManager.getInstance().onDisconnected() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "VTLoopBack"

    const-string v1, "onPause->VTManager.getInstance().setVTClose() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 80
    const-string v0, "VTLoopBack"

    const-string v1, "onPause->VTManager.getInstance().setVTClose() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    const-string v0, "VTLoopBack"

    const-string v1, "onResume!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 95
    const-string v0, "VTLoopBack"

    const-string v1, "onStart!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 90
    const-string v0, "VTLoopBack"

    const-string v1, "onStop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 99
    const-string v0, "VTLoopBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/phone/VTLoopbackActivity;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTLoopbackActivity;->mHighVideoChanged:Z

    if-nez v0, :cond_0

    .line 102
    iput-boolean v3, p0, Lcom/android/phone/VTLoopbackActivity;->mHighVideoChanged:Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTLoopbackActivity;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/VTLoopbackActivity;->mLowVideoChanged:Z

    if-nez v0, :cond_1

    .line 105
    iput-boolean v3, p0, Lcom/android/phone/VTLoopbackActivity;->mLowVideoChanged:Z

    .line 107
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/VTLoopbackActivity;->mHighVideoChanged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/VTLoopbackActivity;->mLowVideoChanged:Z

    if-eqz v0, :cond_2

    .line 108
    const-string v0, "VTLoopBack"

    const-string v1, "surfaceChanged : VTManager.getInstance().setDisplay(mVTLowVideo.getHolder(), mVTHighVideo.getHolder())"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTLoopbackActivity;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VTLoopbackActivity;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/VTLoopbackActivity;->mVTDial:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/VTLoopbackActivity;->mVTEnd:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 117
    const-string v0, "VTLoopBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 121
    const-string v0, "VTLoopBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method
