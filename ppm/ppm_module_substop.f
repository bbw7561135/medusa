      !-------------------------------------------------------------------------
      !  Module       :                 ppm_module_substop
      !-------------------------------------------------------------------------
      !
      !  Purpose      : This module includes the source code for the utility
      !                 routines.
      !
      !  Remarks      :
      !
      !  References   :
      !
      !  Revisions    :
      !-------------------------------------------------------------------------
      !  $Log: ppm_module_substop.f,v $
      !  Revision 1.1.1.1  2006/07/25 15:18:20  menahel
      !  initial import
      !
      !  Revision 1.1  2004/07/26 07:30:08  ivos
      !  First commit after spitting the old modules into single-interface
      !  units.
      !
      !-------------------------------------------------------------------------
      !  Parallel Particle Mesh Library (PPM)
      !  Institute of Computational Science
      !  ETH Zentrum, Hirschengraben 84
      !  CH-8092 Zurich, Switzerland
      !-------------------------------------------------------------------------
     
      !-------------------------------------------------------------------------
      !  Define types
      !-------------------------------------------------------------------------
#define __SINGLE_PRECISION 1
#define __DOUBLE_PRECISION 2

      MODULE ppm_module_substop

         !----------------------------------------------------------------------
         !  Define interfaces to substop
         !----------------------------------------------------------------------
         INTERFACE substop
            MODULE PROCEDURE substop_s
            MODULE PROCEDURE substop_d
         END INTERFACE

         !----------------------------------------------------------------------
         !  include the source 
         !----------------------------------------------------------------------
         CONTAINS
 
#define __KIND __SINGLE_PRECISION
#include "substop.f"                
#undef __KIND

#define __KIND __DOUBLE_PRECISION
#include "substop.f"                
#undef __KIND

      END MODULE ppm_module_substop
